// ============================================================
// MARK: - Guard with Optionals
// ============================================================

// `guard` is used to make sure a condition is TRUE
// before continuing with the rest of the code.
//
// If the condition is FALSE, the `else` block runs.
//
// IMPORTANT:
// The `else` block of a guard statement MUST exit the
// current scope using something like:
// - return
// - break
// - continue
// - throw


// ============================================================
// MARK: - Guard let with Optionals
// ============================================================

// `guard let` is commonly used to safely unwrap optionals.
//
// Example:
//
// String?  -> String
// Double?  -> Double
// Int?     -> Int

func processBook(
    title: String?,
    price: Double?,
    pages: Int?
) {

    guard let theTitle = title,
          let thePrice = price,
          let thePages = pages
    else {
        return
    }

    // If we reach this point, all three values are NOT nil.

    print("\(theTitle) costs $\(thePrice) and has \(thePages) pages.")
}

processBook(
    title: "The Sheep",
    price: 200,
    pages: 416
)
