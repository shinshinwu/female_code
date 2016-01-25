# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

languages = ProgrammingLanguage.create([
  { language: 'PHP' },
  { language: 'JavaScript' },
  { language: 'Python' },
  { language: 'ASP.NET' },
  { language: 'Apex' },
  { language: 'Java' },
  { language: 'Ruby' },
  { language: 'C++' },
  { language: 'C#' },
  { language: 'C' },
  { language: 'Go' },
  { language: 'Perl' },
  { language: 'Swift' },
  { language: 'Haskell' },
  { language: 'Lua' },
  { language: 'Scala' },
  { language: 'Clojure' },
  { language: 'Groovy' },
  { language: 'Objective-C' },
  { language: 'R' },
  { language: 'Erlang' },
  { language: 'Elixir' },
  { language: 'Dart' },
  { language: 'Rust' },
  { language: 'F#' },
  { language: 'OCaml' }
])

headquarters = Headquarter.create([
  { city: "San Francisco", state: "CA" },
  { city: "Chicago", state: 'IL' },
  { city: 'San Diego', state: 'CA' },
  { city: 'Washington D.C.', state: 'D.C.' },
  { city: 'New York', state: 'NY' },
  { city: 'Foster City', state: 'CA' },
  { city: 'San Jose', state: 'CA' },
  { city: 'Cambridge', state: 'MA' },
  { city: 'Los Angeles', state: 'CA' },
  { city: 'Seattle', state: 'WA' },
  { city: 'Portland', state: 'OR' },
  { city: 'Alexandria', state: 'VA' },
  { city: 'Menlo Park', state: 'CA' },
  { city: 'Fort Worth', state: 'TX' },
  { city: 'Palo Alto', state: 'CA' },
  { city: 'College Station', state: 'TX' },
  { city: 'Mountain View', state: 'CA' },
  { city: 'Alameda', state: 'CA' },
  { city: 'San Mateo', state: 'CA' },
  { city: 'Vancouver', state: 'BC', country: 'CA' },
  { city: 'Oakland', state: 'CA' },
  { city: 'London', state: 'London', country: 'UK' },
  { city: 'Phoenix', state: 'AZ' },
  { city: 'Santa Monica', state: 'CA' },
  { city: 'Toronto', state: 'Ontario' },
  { city: 'Durham', state: 'NC' },
  { city: 'Philadelphia', state: 'PA' },
  { city: 'San Luis Obispo', state: 'CA' },
  { city: 'Annapolis', state: 'MD' },
  { city: 'Columbia', state: 'MD' },
  { city: 'Brooklyn', state: 'NY' },
  { city: 'Redwood City', state: 'CA' },
  { city: 'Salt Lake City', state: 'UT' },
  { city: 'Orlando', state: 'FL' },
  { city: 'Austin', state: 'TX' },
  { city: 'Holland', state: 'MI' },
  { city: 'Conshohocken', state: 'PA' },
  { city: 'Charlottesville', state: 'VA' },
  { city: 'Madison', state: 'WI' },
  { city: 'Sacramento', state: 'CA'},
  { city: 'Victoria', state: 'BC', country: 'CA'},
  { city: 'Redmond', state: 'WA' },
  { city: 'Lexington', state: 'KY' },
  { city: 'Pacific Palisades', state: 'CA'}
])

tiers = CompanySizeTier.create([
  { range: '2-10' },
  { range: '11-50' },
  { range: '51-200' },
  { range: '201-500' },
  { range: '501-1000' },
  { range: '1001-5000' },
  { range: '5001-10000' },
  { range: '10000+'}
])

companies = Company.create([
  { name: "Wells Fargo", num_female_eng: 1296, num_eng: 5407, is_public: true, url: "www.wellsfargo.com", company_size_tier_id: 8, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "ThoughtWorks", num_female_eng: 337, num_eng: 1425, is_public: false, url: "www.thoughtworks.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "Chicago").first.id  },
{ name: "Mozilla", num_female_eng: 43, num_eng: 500, is_public: false, url: "www.mozilla.org", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Dropbox", num_female_eng: 42, num_eng: 384, is_public: false, url: "www.dropbox.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Pinterest", num_female_eng: 60, num_eng: 307, is_public: false, url: "www.pinterest.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Airbnb", num_female_eng: 38, num_eng: 281, is_public: false, url: "www.airbnb.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Qualcomm", num_female_eng: 15, num_eng: 271, is_public: true, url: "www.qualcomm.com", company_size_tier_id: 8, headquarter_id: Headquarter.where(city: "San Diego").first.id  },
{ name: "The Washington Post", num_female_eng: 31, num_eng: 217, is_public: false, url: "www.washingtonpost.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "Washington D.C.").first.id  },
{ name: "Yelp", num_female_eng: 17, num_eng: 206, is_public: true, url: "www.yelp.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "PayPal", num_female_eng: 11, num_eng: 163, is_public: true, url: "www.braintree.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Chicago").first.id  },
{ name: "New Relic", num_female_eng: 30, num_eng: 151, is_public: true, url: "www.newrelic.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Etsy", num_female_eng: 19, num_eng: 149, is_public: true, url: "www.etsy.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Guidewire Software", num_female_eng: 21, num_eng: 122, is_public: true, url: "www.guidewire.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "Foster City").first.id  },
{ name: "Lookout", num_female_eng: 9, num_eng: 112, is_public: false, url: "www.lookout.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Quantcast", num_female_eng: 15, num_eng: 112, is_public: false, url: "www.quantcast.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Gilt", num_female_eng: 11, num_eng: 111, is_public: false, url: "www.gilt.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Nearsoft, Inc.", num_female_eng: 3, num_eng: 107, is_public: false, url: "www.nearsoft.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Jose").first.id  },
{ name: "HubSpot", num_female_eng: 13, num_eng: 105, is_public: true, url: "www.hubspot.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "Cambridge").first.id  },
{ name: "GitHub", num_female_eng: 14, num_eng: 104, is_public: false, url: "www.github.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Foursquare", num_female_eng: 6, num_eng: 85, is_public: false, url: "www.foursquare.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Wikimedia Foundation", num_female_eng: 9, num_eng: 82, is_public: false, url: "www.wikimediafoundation.org", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Stripe", num_female_eng: 9, num_eng: 81, is_public: false, url: "www.stripe.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "City of Los Angeles Information Technology Agency", num_female_eng: 33, num_eng: 78, is_public: false, url: "ita.lacity.org", company_size_tier_id: 8, headquarter_id: Headquarter.where(city: "Los Angeles").first.id  },
{ name: "Rhapsody", num_female_eng: 14, num_eng: 76, is_public: false, url: "www.rhapsody.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Seattle").first.id  },
{ name: "Eventbrite", num_female_eng: 14, num_eng: 74, is_public: false, url: "www.eventbrite.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Practice Fusion", num_female_eng: 12, num_eng: 72, is_public: false, url: "www.practicefushion.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Slack", num_female_eng: 13, num_eng: 71, is_public: false, url: "www.slack.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "10up", num_female_eng: 8, num_eng: 67, is_public: false, url: "10up.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Portland").first.id  },
{ name: "The Motley Fool", num_female_eng: 10, num_eng: 64, is_public: false, url: "www.fool.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Alexandria").first.id  },
{ name: "Delphix", num_female_eng: 3, num_eng: 64, is_public: false, url: "www.delphix.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Menlo Park").first.id  },
{ name: "PDX, Inc.", num_female_eng: 13, num_eng: 63, is_public: false, url: "www.pdxinc.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Fort Worth").first.id  },
{ name: "Redfin", num_female_eng: 11, num_eng: 61, is_public: false, url: "www.redfin.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "Seattle").first.id  },
{ name: "Flipboard", num_female_eng: 6, num_eng: 60, is_public: false, url: "www.flipboard.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "SalesforceIQ", num_female_eng: 3, num_eng: 57, is_public: true, url: "www.salesforceiq.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "Rdio", num_female_eng: 9, num_eng: 56, is_public: false, url: "www.rdio.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "NGP VAN", num_female_eng: 15, num_eng: 56, is_public: false, url: "www.ngpvan.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Washington D.C.").first.id  },
{ name: "Capsher Technology", num_female_eng: 4, num_eng: 55, is_public: false, url: "www.capsher.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "College Station").first.id  },
{ name: "Elemental Technologies", num_female_eng: 6, num_eng: 55, is_public: false, url: "www.elementaltechnologies.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Portland").first.id  },
{ name: "if(we)", num_female_eng: 8, num_eng: 53, is_public: false, url: "www.ifwe.co", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Hearsay Social", num_female_eng: 10, num_eng: 52, is_public: false, url: "www.hearsaysocial.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "SurveyMonkey", num_female_eng: 9, num_eng: 52, is_public: false, url: "www.surveymonkey.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "Change.org", num_female_eng: 15, num_eng: 52, is_public: false, url: "change.org", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Polyvore", num_female_eng: 13, num_eng: 50, is_public: true, url: "polyvore.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Mountain View").first.id  },
{ name: "Intercom", num_female_eng: 3, num_eng: 50, is_public: false, url: "www.intercom.io", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "AYASDI", num_female_eng: 16, num_eng: 49, is_public: false, url: "www.ayasdi.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Menlo Park").first.id  },
{ name: "AdRoll", num_female_eng: 6, num_eng: 48, is_public: false, url: "www.adroll.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Mapbox", num_female_eng: 10, num_eng: 48, is_public: false, url: "mapbox.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "POPSUGAR", num_female_eng: 8, num_eng: 46, is_public: false, url: "www.popsugar.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "DramaFever", num_female_eng: 5, num_eng: 46, is_public: false, url: "www.dramafever.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "thoughtbot", num_female_eng: 5, num_eng: 45, is_public: false, url: "thoughtbot.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Perforce Software", num_female_eng: 6, num_eng: 45, is_public: false, url: "www.perforce.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Alameda").first.id  },
{ name: "Edmodo", num_female_eng: 1, num_eng: 45, is_public: false, url: "www.edmodo.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Mateo").first.id  },
{ name: "Zendesk", num_female_eng: 8, num_eng: 45, is_public: true, url: "www.zendesk.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Yahoo", num_female_eng: 4, num_eng: 42, is_public: false, url: "flickr.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "HootSuite Media Inc.", num_female_eng: 6, num_eng: 41, is_public: false, url: "hootsuite.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "Vancouver").first.id  },
{ name: "Ellation", num_female_eng: 2, num_eng: 40, is_public: false, url: "www.ellation.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Stack Exchange", num_female_eng: 3, num_eng: 40, is_public: false, url: "stackexchange.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Outpace Systems", num_female_eng: 4, num_eng: 40, is_public: false, url: "www.outpace.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "VSCO", num_female_eng: 7, num_eng: 40, is_public: false, url: "vsco.co", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Oakland").first.id  },
{ name: "Vungle", num_female_eng: 5, num_eng: 40, is_public: false, url: "vungle.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Khan Academy", num_female_eng: 10, num_eng: 39, is_public: false, url: "www.khanacademy.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Mountain View").first.id  },
{ name: "Intent Media", num_female_eng: 8, num_eng: 39, is_public: false, url: "intentmedia.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "uSwitch", num_female_eng: 1, num_eng: 38, is_public: false, url: "www.uswitch.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "London").first.id  },
{ name: "Birchbox", num_female_eng: 8, num_eng: 36, is_public: false, url: "www.birchbox.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Medium", num_female_eng: 10, num_eng: 36, is_public: false, url: "medium.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Indiegogo", num_female_eng: 7, num_eng: 36, is_public: false, url: "www.indiegogo.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Simply Measured", num_female_eng: 6, num_eng: 35, is_public: false, url: "simplymeasured.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Seattle").first.id  },
{ name: "Quora", num_female_eng: 4, num_eng: 35, is_public: false, url: "quora.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Mountain View").first.id  },
{ name: "TheLadders", num_female_eng: 6, num_eng: 35, is_public: false, url: "www.theladders.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "EnergySavvy", num_female_eng: 7, num_eng: 35, is_public: false, url: "www.energysavvy.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Seattle").first.id  },
{ name: "Manilla, LLC", num_female_eng: 10, num_eng: 32, is_public: false, url: "www.manilla.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Venmo", num_female_eng: 5, num_eng: 32, is_public: false, url: "venmo.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Rent the Runway", num_female_eng: 7, num_eng: 32, is_public: false, url: "renttherunway.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Shoplocal", num_female_eng: 5, num_eng: 31, is_public: false, url: "www.shoplocal.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Phoenix").first.id  },
{ name: "Refinery29", num_female_eng: 9, num_eng: 31, is_public: false, url: "www.refinery29.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Minted", num_female_eng: 4, num_eng: 31, is_public: false, url: "www.minted.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Tapad", num_female_eng: 1, num_eng: 31, is_public: false, url: "www.tapad.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Activision", num_female_eng: 1, num_eng: 30, is_public: true, url: "www.activision.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Santa Monica").first.id  },
{ name: "PagerDuty", num_female_eng: 1, num_eng: 29, is_public: false, url: "pagerduty.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Enstoa, Inc.", num_female_eng: 11, num_eng: 29, is_public: false, url: "www.enstoa.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Bibliocommons", num_female_eng: 6, num_eng: 29, is_public: false, url: "www.bibliocommons.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Toronto").first.id  },
{ name: "Inkling", num_female_eng: 2, num_eng: 29, is_public: false, url: "inkling.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Addepar", num_female_eng: 1, num_eng: 29, is_public: false, url: "addepar.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Mountain View").first.id  },
{ name: "Nextdoor", num_female_eng: 0, num_eng: 29, is_public: false, url: "www.nextdoor.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Moovweb", num_female_eng: 7, num_eng: 29, is_public: false, url: "moovweb.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Paperless Post", num_female_eng: 4, num_eng: 28, is_public: false, url: "www.paperlesspost.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "PlanGrid", num_female_eng: 7, num_eng: 26, is_public: false, url: "www.plangrid.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Cognitect", num_female_eng: 2, num_eng: 25, is_public: false, url: "cognitect.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Durham").first.id  },
{ name: "Causes.com", num_female_eng: 2, num_eng: 25, is_public: false, url: "causes.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Monetate", num_female_eng: 11, num_eng: 25, is_public: false, url: "monetate.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Philadelphia").first.id  },
{ name: "Learnist", num_female_eng: 1, num_eng: 25, is_public: false, url: "learni.st", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "FreshBooks.com", num_female_eng: 5, num_eng: 25, is_public: false, url: "www.freshbooks.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "Toronto").first.id  },
{ name: "Clever", num_female_eng: 4, num_eng: 25, is_public: false, url: "clever.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Goodreads", num_female_eng: 5, num_eng: 25, is_public: false, url: "www.goodreads.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Santa Monica").first.id  },
{ name: "Coinbase", num_female_eng: 1, num_eng: 24, is_public: false, url: "www.coinbase.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Shopatron", num_female_eng: 3, num_eng: 24, is_public: false, url: "ecommerce.shopatron.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Luis Obispo").first.id  },
{ name: "Hipmunk", num_female_eng: 3, num_eng: 24, is_public: false, url: "hipmunk.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Coursera", num_female_eng: 2, num_eng: 24, is_public: false, url: "www.coursera.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Mountain View").first.id  },
{ name: "Orbis Technologies", num_female_eng: 4, num_eng: 24, is_public: false, url: "www.orbistechnologies.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Annapolis").first.id  },
{ name: "Disqus", num_female_eng: 3, num_eng: 23, is_public: false, url: "www.disqus.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "WibiData", num_female_eng: 6, num_eng: 23, is_public: false, url: "www.wibidata.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Udacity", num_female_eng: 3, num_eng: 23, is_public: false, url: "www.udacity.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Mountain View").first.id  },
{ name: "Wave Apps", num_female_eng: 5, num_eng: 23, is_public: false, url: "www.waveapps.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Toronto").first.id  },
{ name: "Incognito Software", num_female_eng: 4, num_eng: 23, is_public: false, url: "www.incognito.com", company_size_tier_id: 7, headquarter_id: Headquarter.where(city: "Vancouver").first.id  },
{ name: "Kiva", num_female_eng: 3, num_eng: 23, is_public: false, url: "kiva.org", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Mindjet", num_female_eng: 8, num_eng: 22, is_public: false, url: "www.mindjet.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Lanetix", num_female_eng: 4, num_eng: 22, is_public: false, url: "www.lanetix.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "OmniTI", num_female_eng: 5, num_eng: 22, is_public: false, url: "omniti.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Columbia").first.id  },
{ name: "Guidebook", num_female_eng: 0, num_eng: 22, is_public: false, url: "www.guidebook.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "Narrative Science", num_female_eng: 3, num_eng: 21, is_public: false, url: "www.narrativescience.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Chicago").first.id  },
{ name: "7digital", num_female_eng: 1, num_eng: 21, is_public: false, url: "7digital.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "London").first.id  },
{ name: "Kanjoya", num_female_eng: 4, num_eng: 21, is_public: false, url: "www.kanjoya.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "The New York Times", num_female_eng: 3, num_eng: 21, is_public: true, url: "www.nytimes.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Liferay", num_female_eng: 2, num_eng: 21, is_public: false, url: "liferay.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "Los Angeles").first.id  },
{ name: "Sunrun", num_female_eng: 6, num_eng: 21, is_public: true, url: "www.sunrun.com", company_size_tier_id: 6, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Asana", num_female_eng: 3, num_eng: 21, is_public: false, url: "www.asana.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Basecamp", num_female_eng: 1, num_eng: 20, is_public: false, url: "basecamp.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Chicago").first.id  },
{ name: "Bitly", num_female_eng: 4, num_eng: 20, is_public: false, url: "bitly.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Fog Creek Software", num_female_eng: 0, num_eng: 20, is_public: false, url: "www.fogcreek.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Sailthru", num_female_eng: 5, num_eng: 20, is_public: false, url: "sailthru.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "HowAboutWe", num_female_eng: 4, num_eng: 20, is_public: false, url: "www.howaboutwe.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Brooklyn").first.id  },
{ name: "Treehouse", num_female_eng: 2, num_eng: 19, is_public: false, url: "teamtreehouse.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Portland").first.id  },
{ name: "shopkick", num_female_eng: 2, num_eng: 19, is_public: false, url: "shopkick.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Redwood City").first.id  },
{ name: "WePay", num_female_eng: 4, num_eng: 19, is_public: false, url: "www.wepay.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "Birst", num_female_eng: 1, num_eng: 19, is_public: false, url: "birst.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Reverb", num_female_eng: 2, num_eng: 18, is_public: false, url: "www.reverbplatform.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Salt Lake City").first.id  },
{ name: "Code School", num_female_eng: 4, num_eng: 18, is_public: false, url: "codeschool.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Orlando").first.id  },
{ name: "New Bamboo, London", num_female_eng: 2, num_eng: 16, is_public: false, url: "new-bamboo.co.uk", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "London").first.id  },
{ name: "Sosh", num_female_eng: 2, num_eng: 16, is_public: false, url: "sosh.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Versal", num_female_eng: 3, num_eng: 16, is_public: false, url: "versal.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Yummly", num_female_eng: 4, num_eng: 16, is_public: false, url: "www.yummly.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Redwood City").first.id  },
{ name: "thredUP", num_female_eng: 5, num_eng: 15, is_public: false, url: "www.thredup.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Selerity", num_female_eng: 2, num_eng: 15, is_public: false, url: "www.seleritycorp.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Blend Labs", num_female_eng: 5, num_eng: 15, is_public: false, url: "blendlabs.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Wanelo", num_female_eng: 3, num_eng: 15, is_public: false, url: "wanelo.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "One Medical", num_female_eng: 4, num_eng: 15, is_public: false, url: "www.onemedical.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Harvest", num_female_eng: 0, num_eng: 15, is_public: false, url: "getharvest.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Parse", num_female_eng: 2, num_eng: 15, is_public: false, url: "parse.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Menlo Park").first.id  },
{ name: "Floored", num_female_eng: 6, num_eng: 15, is_public: false, url: "floored.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Apartment List", num_female_eng: 1, num_eng: 15, is_public: false, url: "apartmentlist.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Highfive", num_female_eng: 3, num_eng: 14, is_public: false, url: "highfive.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Redwood City").first.id  },
{ name: "BlackLocus", num_female_eng: 6, num_eng: 14, is_public: false, url: "blacklocus.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Austin").first.id  },
{ name: "Moontoast", num_female_eng: 0, num_eng: 14, is_public: false, url: "www.moontoast.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Collective IDea", num_female_eng: 0, num_eng: 14, is_public: false, url: "collectiveidea.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Holland").first.id  },
{ name: "Reddit", num_female_eng: 2, num_eng: 14, is_public: false, url: "reddit.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Quip", num_female_eng: 4, num_eng: 14, is_public: false, url: "quip.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "StackMob", num_female_eng: 0, num_eng: 14, is_public: false, url: "stackmob.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Wealthfront", num_female_eng: 4, num_eng: 13, is_public: false, url: "wealthfront.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "Noom", num_female_eng: 3, num_eng: 13, is_public: false, url: "www.noom.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Snapchat", num_female_eng: 2, num_eng: 13, is_public: false, url: "www.snapchat.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Pacific Palisades").first.id  },
{ name: "npm", num_female_eng: 6, num_eng: 13, is_public: false, url: "npmjs.org", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Oakland").first.id  },
{ name: "Optimizely", num_female_eng: 1, num_eng: 12, is_public: false, url: "optimizely.com", company_size_tier_id: 4, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Imgur", num_female_eng: 1, num_eng: 12, is_public: false, url: "www.imgur.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Radius.com", num_female_eng: 3, num_eng: 12, is_public: false, url: "radius.com", company_size_tier_id: 5, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Think Brownstone", num_female_eng: 5, num_eng: 12, is_public: false, url: "thinkbrownstone.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Conshohocken").first.id  },
{ name: "GameChanger Media", num_female_eng: 1, num_eng: 12, is_public: false, url: "gamechanger.io", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "MyLikes", num_female_eng: 2, num_eng: 12, is_public: false, url: "mylikes.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Center for Open Science", num_female_eng: 3, num_eng: 11, is_public: false, url: "centerforopenscience.org", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Charlottesville").first.id  },
{ name: "Bendyworks", num_female_eng: 4, num_eng: 11, is_public: false, url: "bendyworks.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Madison").first.id  },
{ name: "Noodle", num_female_eng: 4, num_eng: 11, is_public: false, url: "noodle.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Billups Design", num_female_eng: 3, num_eng: 11, is_public: false, url: "www.billupsdesign.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Chicago").first.id  },
{ name: "Inductive Automation", num_female_eng: 1, num_eng: 10, is_public: false, url: "www.inductiveautomation.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Sacramento").first.id  },
{ name: "AeroFS", num_female_eng: 1, num_eng: 10, is_public: false, url: "www.aerofs.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "noise", num_female_eng: 2, num_eng: 10, is_public: false, url: "noisenewyork.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Scientific Learning", num_female_eng: 5, num_eng: 10, is_public: false, url: "scilearnglobal.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "Oakland").first.id  },
{ name: "creativeLIVE", num_female_eng: 0, num_eng: 10, is_public: false, url: "www.creativelive.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Pearson College UWC", num_female_eng: 4, num_eng: 9, is_public: false, url: "www.pearsoncollege.ca", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Victoria").first.id  },
{ name: "Keen IO", num_female_eng: 1, num_eng: 9, is_public: false, url: "keen.io", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Topix", num_female_eng: 0, num_eng: 9, is_public: false, url: "topix.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Palo Alto").first.id  },
{ name: "Meteor", num_female_eng: 3, num_eng: 9, is_public: false, url: "meteor.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "The Slate Group", num_female_eng: 3, num_eng: 9, is_public: false, url: "www.slate.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Codecademy", num_female_eng: 1, num_eng: 9, is_public: false, url: "www.codeacademy.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "charity water", num_female_eng: 1, num_eng: 8, is_public: false, url: "www.charitywater.org", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Geckoboard", num_female_eng: 2, num_eng: 8, is_public: false, url: "geckoboard.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "London").first.id  },
{ name: "Massdrop", num_female_eng: 0, num_eng: 8, is_public: false, url: "www.massdrop.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Northwest Independent Ruby Development", num_female_eng: 7, num_eng: 8, is_public: false, url: "nird.us", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Seattle").first.id  },
{ name: "square-root.com", num_female_eng: 2, num_eng: 8, is_public: false, url: "square-root.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Austin").first.id  },
{ name: "Ticket Evolution", num_female_eng: 2, num_eng: 8, is_public: false, url: "www.ticketevolution.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "New York").first.id  },
{ name: "Ivycorp", num_female_eng: 2, num_eng: 7, is_public: false, url: "www.ivytalk.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Redmond").first.id  },
{ name: "Getable", num_female_eng: 2, num_eng: 7, is_public: false, url: "www.getable.com", company_size_tier_id: 1, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "doxo", num_female_eng: 0, num_eng: 7, is_public: false, url: "www.doxo.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "Seattle").first.id  },
{ name: "Datascope Analytics", num_female_eng: 2, num_eng: 7, is_public: false, url: "www.datascopeanalytics.com", company_size_tier_id: 1, headquarter_id: Headquarter.where(city: "Chicago").first.id  },
{ name: "Patreon", num_female_eng: 1, num_eng: 7, is_public: false, url: "www.patreon.com", company_size_tier_id: 2, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "Recurse", num_female_eng: 2, num_eng: 7, is_public: false, url: "www.recurse.com", company_size_tier_id: 1, headquarter_id: Headquarter.where(city: "San Francisco").first.id  },
{ name: "CirrusMio", num_female_eng: 1, num_eng: 7, is_public: false, url: "www.cirrusmio.com", company_size_tier_id: 1, headquarter_id: Headquarter.where(city: "Lexington").first.id  },
{ name: "Makeshift, London", num_female_eng: 2, num_eng: 7, is_public: false, url: "makeshift.io", company_size_tier_id: 1, headquarter_id: Headquarter.where(city: "London").first.id  },
{ name: "Flatiron Health", num_female_eng: 1, num_eng: 7, is_public: false, url: "flatiron.com", company_size_tier_id: 3, headquarter_id: Headquarter.where(city: "New York").first.id  },
])