from placefinder.t import Location

PARIS = Location(
    name="paris",
    country="france",
    districts=[
        "75001",
        "75002",
        "75003",
        "75004",
        "75005",
        "75006",
        "75007",
        "75008",
        "75009",
        "75010",
        "75011",
        "75012",
        "75013",
        "75014",
        "75015",
        "75016",
        "75017",
        "75018",
        "75019",
        "75020",
    ],
    radius=10000,
)

locations: dict[str, Location] = {"paris": PARIS}

if __name__ == "__main__":
    print(locations["paris"])
