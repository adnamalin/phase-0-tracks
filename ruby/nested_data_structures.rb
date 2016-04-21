grocery_store = {
    produce: {
        location: "front of store",
        apples: [
            "gala",
            "braeburn",
            "fuji"
        ],
        potatoes: [
			"sweet",
			"russet",
			"fingerling"
		]	
    },
    meats: {
        location: "butcher counter",
        pork: [
            "belly",
            "bacon",
            
        ],
        beef: [
            "tri-tip",
            "sirloin",
            "rib-eye"
        ],
        chicken: [
        	"breast"	
        ]
    },
    dairy: {
        location: "refrigerators", 
        dairy_types: {
            milk:  [
            	"whole",
            	"skim",
            	"2%"
            ],
            yogurt: "greek",
            cheese: [
            	"mozzarella",
            	"parmesan"
            ]
        },
    }
}

 p grocery_store
 p grocery_store[:dairy][:dairy_types][:milk].push("soy")
 p grocery_store[:dairy][:dairy_types][:yogurt][0] = ("skyr")
 p grocery_store[:meats][:location]
 p grocery_store[:produce][:potatoes].delete_at(2)