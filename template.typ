#import "@preview/showybox:2.0.4": showybox
#import "@preview/octique:0.1.1": octique-inline

#let theorion-i18n(map) = {
  if type(map) != dictionary {
    return map
  }
  return context {
    let value = map
    if "en" in map {
      if type(map.at("en")) != dictionary {
        value = map.at("en")
      } else {
        value = map.at("en").values().at(0, default: value)
      }
    }
    if text.lang == none {
      return value
    }
    if text.lang in map {
      if type(map.at(text.lang)) != dictionary {
        value = map.at(text.lang)
      } else {
        if text.region != none and text.region in map.at(text.lang) {
          value = map.at(text.lang).at(text.region)
        } else {
          value = map.at(text.lang).values().at(0, default: value)
        }
      }
    }
    return value
  }
}

#let theorion-i18n-map = (
  theorem: (
    en: (us: "Theorem", gb: "Theorem"),
    pl: "Twierdzenie",
  ),
  lemma: (
    en: (us: "Lemma", gb: "Lemma"),
    pl: "Lemat",
  ),
  corollary: (
    en: (us: "Corollary", gb: "Corollary"),
    pl: "Wniosek",
  ),
  note: (
    en: (us: "Note", gb: "Note"),
    pl: "Dopisek",
  ),
  warning: (
    en: (us: "Warning", gb: "Warning"),
    pl: "Uwaga",
  ),
  definition: (
    en: (us: "Definition", gb: "Definition"),
    pl: "Definicja",
  ),
  axiom: (
    en: (us: "Axiom", gb: "Axiom"),
    pl: "Aksjomat",
  ),
  postulate: (
    en: (us: "Postulate", gb: "Postulate"),
    pl: "Postulat",
  ),
  proposition: (
    en: (us: "Proposition", gb: "Proposition"),
    pl: "Propozycja",
  ),
  example: (
    en: (us: "Example", gb: "Example"),
    pl: "Przyklad",
  ),
  problem: (
    en: (us: "Problem", gb: "Problem"),
    pl: "Zadanie",
  ),
  exercise: (
    en: (us: "Exercise", gb: "Exercise"),
    pl: "Ćwiczenie",
  ),
  conclusion: (
    en: (us: "Conclusion", gb: "Conclusion"),
    pl: "Wniosek",
  ),
  assumption: (
    en: (us: "Assumption", gb: "Assumption"),
    pl: "Założenie",
  ),
  property: (
    en: (us: "Property", gb: "Property"),
    pl: "Własność",
  ),
  remark: (
    en: (us: "Remark", gb: "Remark"),
    pl: "Obserwacja",
  ),
  solution: (
    en: (us: "Solution", gb: "Solution"),
    pl: "Rozwiązanie",
  ),
  proof: (
    en: (us: "Proof", gb: "Proof"),
    pl: "Dowód",
  ),
  tip: (
    en: (us: "Tip", gb: "Tip"),
    pl: "Wskazówka",
  ),
  important: (
    en: (us: "Important", gb: "Important"),
    pl: "Ważne",
  ),
  conjecture: (
    en: (us: "Conjecture", gb: "Conjecture"),
    pl: "Przypuszczenie",
  ),
  caution: (
    en: (us: "Caution", gb: "Caution"),
    pl: "Uwaga",
  ),
)

/// A simple wrapper for the `state` function, inspired by React Hook.
#let use-state(key, init) = {
  let used-state = state(key, init)
  return (
    (..args) => {
      let arg = args.pos().at(0, default: none)
      if arg == none {
        used-state.final()
      } else if type(arg) == function {
        used-state.at(arg())
      } else {
        used-state.at(arg)
      }
    },
    value => used-state.update(value),
  )
}

/// Global theorion numbering
#let (get-theorion-numbering, set-theorion-numbering) = use-state("theorion-numbering", "1.1")

/// Code from: [jbirnick](https://github.com/jbirnick/typst-rich-counters)
/// Modified by: [OrangeX4](https://github.com/OrangeX4)
/// License: MIT
/// I need a patched version of `rich-counter` to support the `zero-fill` and `leading-zero` options. And we can update the arguments by set-inherited-levels, set-inherited-from, set-zero-fill, and set-leading-zero functions.

/// Create a richer counter that can inherit from other counters and display the counter value. Returns a dictionary of functions to interact with the counter like `at`, `get-inherited-levels` and `set-inherited-levels`.
///
/// - identifier (string): Unique identifier for the counter.
/// - inherited-levels (integer): Number of heading levels to inherit from. Default is 0, which will inherit from the inherited-from counter if it is a dictionary.
/// - inherited-from (counter): Counter to inherit from. Default is heading.
/// - zero-fill (boolean): Whether to zero-fill the numbering. Default is false.
/// - leading-zero (boolean): Whether to remove the leading zero. Default is false.
#let richer-counter(
  identifier: none,
  inherited-levels: 0,
  inherited-from: heading,
  zero-fill: false,
  leading-zero: false,
) = {
  // this can equip `headings` and similar objects with the richer-counter functions
  // that are needed for recursive evaluation
  let richer-wrapper(key) = {
    let at(loc) = {
      let cntr = counter(key)
      if loc == none { cntr.final() } else { cntr.at(loc) }
    }
    let last-update-location(level, before-key) = {
      if key == heading {
        let occurrences = if before-key == none { query(selector(key)) } else {
          query(selector(key).before(before-key))
        }
        for occurrence in occurrences.rev() {
          if occurrence.level <= level {
            return occurrence.location()
          }
        }
      } else {
        // best guess: just take the last occurrence of the element
        // WARNING: this can be wrong for certain elements, especially if Typst introduces more queryable/locatable elements
        let occurrences = if before-key == none { query(selector(key)) } else {
          query(selector(key).before(before-key))
        }
        if occurrences.len() == 0 {
          return none
        } else {
          return occurrences.last().location()
        }
      }
    }

    return (at: at, get-inherited-levels: () => 0, last-update-location: last-update-location)
  }

  // oop-style state management
  let (get-inherited-from, set-inherited-from) = use-state("richer-inherited-from:" + identifier, inherited-from)
  let richer-inherited-levels = state("richer-inherited-levels:" + identifier, inherited-levels)
  let get-inherited-levels(..args) = {
    // small hack to allow for inheritance of richer-counter
    let arg = args.pos().at(0, default: none)
    let value = if arg == none {
      richer-inherited-levels.final()
    } else {
      richer-inherited-levels.at(arg)
    }
    if type(get-inherited-from()) == dictionary and value == 0 {
      return (get-inherited-from().get-inherited-levels)() + 1
    }
    return value
  }
  let set-inherited-levels(value) = richer-inherited-levels.update(value)
  let (get-zero-fill, set-zero-fill) = use-state("richer-zero-fill:" + identifier, zero-fill)
  let (get-leading-zero, set-leading-zero) = use-state("richer-leading-zero:" + identifier, leading-zero)

  // get the parent richer-counter
  let parent-richer-counter() = if type(get-inherited-from(here())) == dictionary {
    get-inherited-from(here())
  } else {
    richer-wrapper(get-inherited-from(here()))
  }

  // `step` method for this richer-counter
  let step(depth: 1) = [
    #metadata((
      kind: "richer-counter:step",
      identifier: identifier,
      value: depth,
    ))
    #label("richer-counter:step:" + identifier)
  ]

  // `update` method for this richer-counter
  // only support array of integers as counter value
  let update(counter-value) = [
    #metadata((
      kind: "richer-counter:update",
      identifier: identifier,
      value: counter-value,
    ))
    #label("richer-counter:update:" + identifier)
  ]

  // find updates of own partial (!) counter in certain range
  let updates-during(after-key, before-key) = {
    let query-for = selector(label("richer-counter:step:" + identifier)).or(selector(label(
      "richer-counter:update:" + identifier,
    )))

    if after-key == none and before-key == none {
      return query(query-for)
    } else if after-key == none {
      return query(query-for.before(before-key))
    } else if before-key == none {
      return query(query-for.after(after-key))
    } else {
      return query(query-for.after(after-key).before(before-key))
    }
  }

  // find last update of this total (!) counter up to a certain level and before a certain location
  let last-update-location(level, before-key) = {
    let parent-last-update-location = (parent-richer-counter().last-update-location)(
      get-inherited-levels(here()),
      before-key,
    )
    let updates = updates-during(parent-last-update-location, before-key)

    for update in updates.rev() {
      let kind = update.value.kind
      if kind == "richer-counter:step" {
        if update.value.value <= level - get-inherited-levels(here()) {
          return update.location()
        }
      } else if kind == "richer-counter:update" {
        if update.value.value.len() < level {
          return update.location()
        }
      }
    }

    return parent-last-update-location
  }

  // compute value of the counter after the given updates, starting from 0
  let compute-counter(updates) = {
    let value = (0,)
    for update in updates {
      let kind = update.value.kind
      if kind == "richer-counter:step" {
        let level = update.value.value
        while value.len() < level { value.push(0) }
        while value.len() > level { let _ = value.pop() }
        value.at(level - 1) += 1
      } else if kind == "richer-counter:update" {
        let inherited-levels = get-inherited-levels(here())
        let counter-value = update.value.value
        counter-value = counter-value.slice(calc.min(inherited-levels, counter-value.len()))
        value = if counter-value.len() == 0 {
          (0,)
        } else {
          counter-value
        }
      }
    }

    return value
  }

  // `at` method for this richer-counter
  let at(key) = {
    // get inherited numbers
    let num-parent = (parent-richer-counter().at)(key)
    let inherited-levels = get-inherited-levels(here())
    while get-zero-fill(here()) and num-parent.len() < inherited-levels { num-parent.push(0) }
    while num-parent.len() > inherited-levels { let _ = num-parent.pop() }
    if not get-leading-zero(here()) and num-parent.at(0, default: none) == 0 {
      num-parent = num-parent.slice(1)
    }

    // get numbers of own partial counter
    let updates = updates-during((parent-richer-counter().last-update-location)(inherited-levels, key), key)
    let num-self = compute-counter(updates)

    return num-parent + num-self
  }

  // `get` method for this richer-counter
  let get() = { at(here()) }

  // `final` method for this richer-counter
  let final() = { at(none) }

  // `display` method for this richer-counter
  let display(..args) = {
    if args.pos().len() == 0 {
      numbering("1.1", ..get())
    } else {
      numbering(args.pos().first(), ..get())
    }
  }

  return (
    step: step,
    update: update,
    at: at,
    get: get,
    final: final,
    display: display,
    get-inherited-levels: get-inherited-levels,
    set-inherited-levels: set-inherited-levels,
    get-inherited-from: get-inherited-from,
    set-inherited-from: set-inherited-from,
    get-zero-fill: get-zero-fill,
    set-zero-fill: set-zero-fill,
    get-leading-zero: get-leading-zero,
    set-leading-zero: set-leading-zero,
    last-update-location: last-update-location,
  )
}


/// Display the numbering of a theorem environment
///
/// - el (content): Figure element to display the numbering
#let theorion-display-number(el) = {
  assert(type(el) == content and el.func() == figure, message: "The element must be a figure.")
  // some magic to get the correct numbering
  if el.numbering == none {
    return ""
  } else {
    assert(type(el.numbering) == function, message: "The numbering must be a function with get-loc.")
    let res = (el.numbering)(get-loc: () => el.location())
    if type(res) == dictionary {
      assert(
        "kind" in res and "value" in res and res.at("kind") == "static",
        message: "The numbering function must return a dictionary with kind 'static'.",
      )
      return res.at("value")
    } else {
      assert(type(res) == function, message: str(type(res)))
      std.numbering(res)
    }
  }
}


/// Create a theorem environment based on richer-counter
///
/// - identifier (string): Unique identifier for the counter and the kind of the frame
/// - supplement-map (string|dict): Label text or dictionary of labels for different languages
/// - counter (counter): Counter to use. Default is none, which creates a new counter based on the identifier
/// - inherited-levels (integer): Number of heading levels to inherit from. Default is 0
/// - inherited-from (counter): Counter to inherit from. Default is heading
/// - numbering (string): Numbering format. Default is get-theorion-numbering
/// - render (function): Custom rendering function
/// -> (counter, render-fn, frame-fn, show-fn)
#let make-frame(
  identifier,
  supplement-map,
  counter: none,
  inherited-levels: 0,
  inherited-from: heading,
  numbering: get-theorion-numbering,
  render: (prefix: none, title: "", full-title: "", body) => block[*#full-title*: #body],
) = {
  let get-numbering = if type(numbering) != function { (..args) => numbering } else { numbering }
  /// Counter for the frame.
  let frame-counter = if counter != none { counter } else {
    richer-counter(
      identifier: identifier,
      inherited-levels: inherited-levels,
      inherited-from: inherited-from,
    )
  }
  let supplement-i18n = theorion-i18n(supplement-map)
  let display-number(get-loc: here) = (counter: frame-counter, ..args) => context {
    let loc = get-loc()
    // We need to add 1 to the counter value.
    let counter-value = if type(counter) == dictionary {
      (counter.at)(loc)
    } else {
      counter.at(loc)
    }
    counter-value = counter-value.slice(0, -1) + (counter-value.at(-1) + 1,)
    std.numbering(get-numbering(get-loc()), ..counter-value)
  }

  /// Useful functions for the frame.
  let get-prefix(get-loc, number: auto, supplement: auto) = [#if supplement == auto { supplement-i18n } else {
      supplement
    } #if number == auto { display-number(get-loc: get-loc)() } else { number }]
  let get-full-title(prefix, title) = [#prefix#{ if title != "" [ (#title)] }]
  /// Frame with the counter.
  let frame(
    title: "",
    outlined: true,
    numbering: display-number,
    number: auto,
    supplement: auto,
    get-prefix: get-prefix,
    get-full-title: get-full-title,
    ..args,
    body,
  ) = figure(
    kind: identifier,
    supplement: if supplement == auto { supplement-i18n } else { supplement },
    caption: title,
    outlined: outlined,
    numbering: if number == auto { numbering } else { (..args) => (kind: "static", value: number) },
    {
      [#metadata((
          identifier: identifier,
          number: number,
          supplement: supplement,
          supplement-map: supplement-map,
          supplement-i18n: supplement-i18n,
          kind: identifier,
          counter: frame-counter,
          title: title,
          numbering: numbering,
          outlined: outlined,
          get-prefix: get-prefix,
          get-full-title: get-full-title,
          render: render,
          args: args,
          body: body,
        )) <theorion-frame-metadata>]
      let prefix = get-prefix(here, number: number, supplement: supplement)
      render(
        prefix: prefix,
        title: title,
        full-title: get-full-title(prefix, title),
        ..args,
        body,
      )
      // Update the counter.
      if numbering != none and number == auto {
        (frame-counter.step)()
      }
    },
  )
  /// Frame without the counter.
  let frame-box = frame.with(
    numbering: none,
    outlined: false,
    get-prefix: (get-loc, number: auto, supplement: auto) => none,
    get-full-title: (prefix, title) => title,
  )
  /// Show rule for the frame.
  let show-frame(body) = {
    // skip the default figure style.
    show figure.where(kind: identifier): set align(start)
    show figure.where(kind: identifier): set block(breakable: true)
    show figure.where(kind: identifier): it => it.body
    // Custom outline for the theorem environment.
    show outline: it => {
      show outline.entry: entry => {
        let el = entry.element
        if el.func() == figure and el.kind == identifier {
          block(link(el.location(), entry.indented(
            [#el.supplement #context theorion-display-number(el)],
            {
              entry.body()
              box(width: 1fr, inset: (x: .25em), entry.fill)
              entry.page()
            },
            gap: .5em,
          )))
        } else {
          entry
        }
      }
      it
    }
    // Custom reference for the theorem environment.
    show ref: it => {
      let el = it.element
      if el != none and el.func() == figure and el.kind == identifier {
        link(el.location(), {
          if it.supplement == auto { el.supplement } else { it.supplement }
          " "
          context theorion-display-number(el)
        })
      } else {
        it
      }
    }
    body
  }
  return (frame-counter, frame-box, frame, show-frame)
}


/// Restate the theorion frame with a custom filter and render function.
///
/// - filter (function): Filter function to select the frames to restate, such as `it => it.identifier == "theorem"`
/// - render (function): Custom rendering function for the frames, such as `it => it.render` or `it => (prefix: none, title: "", full-title: auto, body) => block[#strong[#full-title.]#sym.space#emph(body)]`
#let theorion-restate(filter: it => true, render: it => it.render) = context {
  for el in query(<theorion-frame-metadata>) {
    let figure-el = query(selector(figure).before(el.location())).last()
    let get-loc = () => el.location()
    let it = el.value
    assert(type(it) == dictionary, message: "The metadata must be a dictionary.")
    it.get-loc = get-loc
    it.el = figure-el
    it.label = if figure-el.has("label") { figure-el.label } else { none }
    let filter = if type(filter) == label {
      it => it.label == filter
    } else {
      filter
    }
    if filter(it) {
      let prefix = (it.get-prefix)(get-loc, number: it.number, supplement: it.supplement)
      (render(it))(
        prefix: prefix,
        title: it.title,
        full-title: (it.get-full-title)(prefix, it.title),
        it.body,
      )
    }
  }
}

/// Global result configuration to control visibility of proofs and solutions
/// Modified by `#set-result("noanswer")`
/// - "answer": Show proofs and solutions (default)
/// - "noanswer": Hide proofs and solutions
#let (get-result, set-result) = use-state("theorion-result", "answer")

/// Global QED symbol configuration
/// Modified by `#set-qed-symbol(sym.square.stroked)`
/// Default is `sym.square`
#let (get-qed-symbol, set-qed-symbol) = use-state("theorion-qed-symbol", sym.square)

/// Create an example environment with italic title
///
/// - title (string|dict): Title text or dictionary for i18n. Default is "Example"
/// - body (content): Content of the example
/// -> content
#let example(
  title: theorion-i18n-map.at("example"),
  body,
) = [#emph(theorion-i18n(title)).#sym.space#body]


/// Create a problem environment with italic title
///
/// - title (string|dict): Title text or dictionary for i18n. Default is "Problem"
/// - body (content): Content of the problem
/// -> content
#let problem(
  title: theorion-i18n-map.at("problem"),
  body,
) = [#emph(theorion-i18n(title)).#sym.space#body]

/// Create a solution environment with italic title
/// Can be hidden using #set-result("noanswer")
///
/// - title (string|dict): Title text or dictionary for i18n. Default is "Solution"
/// - body (content): Content of the solution
/// -> content
#let solution(
  title: theorion-i18n-map.at("solution"),
  body,
) = context if get-result(here()) == "noanswer" { none } else [#emph(theorion-i18n(title)).#sym.space#body]

/// Create a conclusion environment with italic title
///
/// - title (string|dict): Title text or dictionary for i18n. Default is "Conclusion"
/// - body (content): Content of the conclusion
/// -> content
#let conclusion(
  title: theorion-i18n-map.at("conclusion"),
  body,
) = [#emph(theorion-i18n(title)).#sym.space#body]

/// Create an exercise environment with italic title
///
/// - title (string|dict): Title text or dictionary for i18n. Default is "Exercise"
/// - body (content): Content of the exercise
/// -> content
#let exercise(
  title: theorion-i18n-map.at("exercise"),
  body,
) = [#emph(theorion-i18n(title)).#sym.space#body]

/// Create a proof environment with italic title and QED symbol
/// Can be hidden using #set-result("noanswer")
/// Uses global QED symbol set by #set-qed-symbol()
///
/// - title (string|dict): Title text or dictionary for i18n. Default is "Proof"
/// - qed (symbol): Symbol to use for end of proof. Default is from global setting
/// - body (content): Content of the proof
/// -> content
#let proof(
  title: theorion-i18n-map.at("proof"),
  qed: auto,
  body,
) = context if get-result(here()) == "noanswer" { none } else {
  let qed-symbol = if qed == auto { get-qed-symbol(here()) } else { qed }
  [#emph(theorion-i18n(title)).#sym.space#body#box(width: 0em)#h(1fr)#sym.wj#sym.space.nobreak$#qed-symbol$]
}

/// Create an emphasized box with yellow styling and dashed border
///
/// - body (content): Content of the box
/// -> content
#let emph-box(body, breakable: false) = {
  // Main rendering
  let rendered = showybox(
    frame: (
      dash: "dashed",
      border-color: yellow.darken(30%),
      body-color: yellow.lighten(90%),
    ),
    sep: (dash: "dashed"),
    breakable: breakable,
    body,
  )
  if "html" in dictionary(std) {
    // HTML rendering
    context if target() == "html" {
      html.elem(
        "div",
        attrs: (
          style: "background: #FFFDEB; border: .1em dashed #E3C000; border-radius: .4em; padding: .25em 1em; width: 100%; box-sizing: border-box; margin: .5em 0em;",
        ),
        body,
      )
    } else {
      rendered
    }
  } else {
    rendered
  }
}

/// Create a quote box with start border styling in gray
///
/// - body (content): Content to be quoted
/// -> content
#let quote-box(..args, body) = context {
  // HTML rendering
  if "html" in dictionary(std) and target() == "html" {
    html.elem(
      "div",
      attrs: (
        style: "border-inline-start: .25em solid #C8C8C8; padding: .1em 1em; width: 100%; box-sizing: border-box; margin-bottom: .5em; color: #646464;",
      ),
      body,
    )
  } else {
    // Main rendering
    block(stroke: language-aware-start(.25em + luma(200)), inset: language-aware-start(1em) + (y: .75em), ..args, text(
      luma(100),
      body,
    ))
  }
}

/// Create a note box with customizable styling and icon
/// Base template for tip-box, important-box, warning-box, and caution-box
///
/// - fill (color): Color of the border and icon. Default is `rgb("#0969DA")`
/// - title (string|dict): Title text or dictionary for i18n. Default is "Note"
/// - icon-name (string): Name of the icon to display from octicons set
/// - body (content): Content of the note
/// -> content
#let note-box(
  fill: rgb("#0969DA"),
  title: theorion-i18n-map.at("note"),
  icon-name: "info",
  ..args,
  body,
) = context {
  let title-i18n = theorion-i18n(title)
  // HTML rendering
  if "html" in dictionary(std) and target() == "html" {
    html.elem(
      "div",
      attrs: (
        style: "border-inline-start: .25em solid "
          + fill.to-hex()
          + "; padding: .1em 1em; width: 100%; box-sizing: border-box; margin-bottom: .5em;",
      ),
      {
        html.elem(
          "p",
          attrs: (
            style: "margin-top: .5em; font-weight: bold; color: "
              + fill.to-hex()
              + "; display: flex; align-items: center;",
          ),
          html.elem(
            "span",
            attrs: (
              style: "display: inline-flex; align-items: center; justify-content: center; width: 1em; height: 1em; vertical-align: middle; margin: 0em .5em 0em 0em;",
            ),
            html.frame(octique-inline(
              height: 1.2em,
              width: 1.2em,
              color: fill,
              baseline: .2em,
              icon-name,
            )),
          )
            + title-i18n,
        )
        body
      },
    )
  } else {
    // Main rendering
    block(
      stroke: language-aware-start(.25em + fill),
      inset: language-aware-start(1em) + (top: .5em, bottom: .75em),
      width: 100%,
      ..args,
      {
        block(sticky: true, text(
          fill: fill,
          weight: "semibold",
          octique-inline(
            height: 1.2em,
            width: 1.2em,
            color: fill,
            baseline: .2em,
            icon-name,
          )
            + h(.5em)
            + title-i18n,
        ))
        body
      },
    )
  }
}

/// Create a tip box with green styling and light bulb icon
/// Useful for helpful suggestions and tips
#let tip-box = note-box.with(
  fill: rgb("#1A7F37"),
  title: theorion-i18n-map.at("tip"),
  icon-name: "light-bulb",
)

/// Create an important box with purple styling and report icon
/// Useful for highlighting key information
#let important-box = note-box.with(
  fill: rgb("#8250DF"),
  title: theorion-i18n-map.at("important"),
  icon-name: "report",
)

/// Create a warning box with amber styling and alert icon
/// Useful for potential issues or warnings
#let warning-box = note-box.with(
  fill: rgb("#9A6700"),
  title: theorion-i18n-map.at("warning"),
  icon-name: "alert",
)

/// Create a caution box with red styling and stop icon
/// Useful for serious warnings or dangerous situations
#let caution-box = note-box.with(
  fill: rgb("#CF222E"),
  title: theorion-i18n-map.at("caution"),
  icon-name: "stop",
)

/// Create a remark environment
///
/// - title (string|dict): Title text or dictionary for i18n. Default is "Remark"
/// - body (content): Content of the remark
/// -> content
#let remark = note-box.with(
  fill: rgb("#118D8D"),
  title: theorion-i18n-map.at("remark"),
  icon-name: "comment",
)


/// Create a dictionary (right/left: value) based on `text.lang`
///
/// - value (string): left value for LTR text, right value for RTL text
/// -> dictionary
#let language-aware-start(value) = {
  if text.lang == "ar" {
    (right: value)
  } else {
    (left: value)
  }
}


/// A simple render function with a colored start border
#let render-fn(
  fill: red,
  prefix: none,
  title: "",
  full-title: auto,
  ..args,
  body,
) = context {
  // HTML rendering
  if "html" in dictionary(std) and target() == "html" {
    html.elem("div", attrs: (
      style: "border-inline-start: .25em solid "
        + fill.to-hex()
        + "; padding: .1em 1em; width: 100%; box-sizing: border-box; margin-bottom: .5em;",
    ))[
      #if full-title != "" {
        html.elem(
          "p",
          attrs: (
            style: "margin-top: .5em; font-weight: bold; color: " + fill.to-hex() + ";",
          ),
          full-title,
        )
      }
      #body
    ]
  } else {
    // Main rendering
    block(
      stroke: language-aware-start(.25em + fill),
      inset: language-aware-start(1em) + (y: .75em),
      width: 100%,
      ..args,
      [
        #if full-title != "" {
          block(sticky: true, strong(text(fill: fill, full-title)))
        }
        #body
      ],
    )
  }
}

// Core theorems
#let (theorem-counter, theorem-box, theorem, show-theorem) = make-frame(
  "theorem",
  theorion-i18n-map.at("theorem"),
  inherited-levels: 2,
  render: render-fn.with(fill: red.darken(20%)),
)

#let (lemma-counter, lemma-box, lemma, show-lemma) = make-frame(
  "lemma",
  theorion-i18n-map.at("lemma"),
  counter: theorem-counter,
  render: render-fn.with(fill: teal.darken(10%)),
)

#let (corollary-counter, corollary-box, corollary, show-corollary) = make-frame(
  "corollary",
  theorion-i18n-map.at("corollary"),
  inherited-from: theorem-counter,
  render: render-fn.with(fill: fuchsia.darken(10%)),
)

// Definitions and foundations
#let (definition-counter, definition-box, definition, show-definition) = make-frame(
  "definition",
  theorion-i18n-map.at("definition"),
  counter: theorem-counter,
  render: render-fn.with(fill: blue),
)

#let (axiom-counter, axiom-box, axiom, show-axiom) = make-frame(
  "axiom",
  theorion-i18n-map.at("axiom"),
  counter: theorem-counter,
  render: render-fn.with(fill: green.darken(20%)),
)

#let (postulate-counter, postulate-box, postulate, show-postulate) = make-frame(
  "postulate",
  theorion-i18n-map.at("postulate"),
  counter: theorem-counter,
  render: render-fn.with(fill: maroon),
)

// Important results
#let (proposition-counter, proposition-box, proposition, show-proposition) = make-frame(
  "proposition",
  theorion-i18n-map.at("proposition"),
  counter: theorem-counter,
  render: render-fn.with(fill: blue.darken(10%)),
)

#let (assumption-counter, assumption-box, assumption, show-assumption) = make-frame(
  "assumption",
  theorion-i18n-map.at("assumption"),
  counter: theorem-counter,
  render: render-fn.with(fill: purple.darken(10%)),
)

#let (property-counter, property-box, property, show-property) = make-frame(
  "property",
  theorion-i18n-map.at("property"),
  counter: theorem-counter,
  render: render-fn.with(fill: eastern.darken(10%)),
)

#let (conjecture-counter, conjecture-box, conjecture, show-conjecture) = make-frame(
  "conjecture",
  theorion-i18n-map.at("conjecture"),
  counter: theorem-counter,
  render: render-fn.with(fill: navy.darken(10%)),
)

#let (problem-counter, problem-box, problem, show-problem) = make-frame(
  "problem",
  theorion-i18n-map.at("problem"),
  inherited-levels: 2,
  render: render-fn.with(fill: green.darken(40%)),
)

#let (subproblem-counter, subproblem-box, subproblem, show-subproblem) =make-frame(
  "subproblem",
  "",
  inherited-from: problem-counter,
  numbering: "1.a)",
  render: render-fn.with(fill: green.darken(40%)),
)

/// Collection of show rules for all theorem environments
/// Applies all theorion-related show rules to the document
///
/// - body (content): Content to apply the rules to
/// -> content
#let show-theorion(body) = {
  show: show-theorem
  show: show-lemma
  show: show-corollary
  show: show-axiom
  show: show-postulate
  show: show-definition
  show: show-proposition
  show: show-assumption
  show: show-property
  show: show-conjecture
  show: show-problem
  show: show-subproblem
  body
}

/// Set the number of inherited levels for theorem environments
///
/// - value (integer): Number of levels to inherit
#let set-inherited-levels(value) = (theorem-counter.set-inherited-levels)(value)

/// Set the zero-fill option for theorem environments
///
/// - value (boolean): Whether to zero-fill the numbering
#let set-zero-fill(value) = (theorem-counter.set-zero-fill)(value)

/// Set the leading-zero option for theorem environments
///
/// - value (boolean): Whether to include leading zeros in the numbering
#let set-leading-zero(value) = (theorem-counter.set-leading-zero)(value)


#let template(body) = [
  #set text(lang: "pl", size: 14pt)
  #set page(margin: 10mm, numbering: "1")
  #set heading(numbering: "1.")
  #set par(justify: true)
  #show: show-theorion
  #body
]

