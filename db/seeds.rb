# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Admin::Language.delete_all
languages = Admin::Language.create([{name: 'Français', code: 'fr', status: 1}, {name: 'English', code: 'en', status: 1},{name: 'Española', code: 'es', status: 1}])

#Admin::Country.delete_all
countries = [
    [1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [2, 'AL', 'ALBANIE', 'Albanie', 'ALB', 8, 355, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [3, 'DZ', 'ALGERIE', 'Algerie', 'DZA', 12, 213, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [4, 'AS', 'SAMOA AMÉRICAINES', 'samoa américaines', 'ASM', 16, 1684, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [5, 'AD', 'ANDORRE', 'andorre', 'AND', 20, 376, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [8, 'AQ', 'ANTARCTIQUE', 'Antarctique', nil , nil , 0, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [9, 'AG', 'ANTIGUA-ET-BARBUDA', 'Antigua-et-Barbuda', 'ATG', 28, 1268, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [10, 'AR', 'ARGENTINE', 'Argentine', 'ARG', 32, 54, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [11, 'AM', 'ARMENIE', 'Armenie', 'ARM', 51, 374, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [13, 'AU', 'AUSTRALIE', 'Australie', 'AUS', 36, 61, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [14, 'AT', 'AUTRICHE', 'Autriche', 'AUT', 40, 43, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [15, 'AZ', 'AZERBAÏDJAN', 'Azerbaïdjan', 'AZE', 31, 994, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [25, 'BT', 'BHOUTAN', 'Bhoutan', 'BTN', 64, 975, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [26, 'BO', 'BOLIVIE', 'Bolivie', 'BOL', 68, 591, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [27, 'BA', 'BOSNIE HERZEGOVINE', 'Bosnie Herzegovine', 'BIH', 70, 387, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', nil , nil , 0, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [30, 'BR', 'BRÉSIL', 'Brésil', 'BRA', 76, 55, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [31, 'IO', 'TÉRRITOIRE BRITANIQUE DE L\'OCÉAN INDIEN', 'Térritoire Britanique de l\'Océan Indien', nil , nil , 246, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [33, 'BG', 'BULGARIE', 'Bulgarie', 'BGR', 100, 359, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [36, 'KH', 'CAMBODJE', 'Cambodje', 'KHM', 116, 855, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [37, 'CM', 'CAMEROUN', 'Cameroun', 'CMR', 120, 237, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [39, 'CV', 'CAP VERT', 'Cap Vert', 'CPV', 132, 238, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [40, 'KY', 'ÎLES CAÏMANS', 'Îles Caïmans', 'CYM', 136, 1345, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [41, 'CF', 'RÉPUBLIQUE CENTRE AFRICAINE', 'République Centre Africaine', 'CAF', 140, 236, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [42, 'TD', 'TCHAD', 'Tchad', 'TCD', 148, 235, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [43, 'CL', 'CHILIE', 'Chilie', 'CHL', 152, 56, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [44, 'CN', 'CHINE', 'Chine', 'CHN', 156, 86, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [45, 'CX', 'ÎLE CHRISTMAS', 'Île Christmas', nil , nil , 61, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [46, 'CC', 'Iles Cocos (Keeling)', 'Iles Cocos (Keeling)', nil , nil , 672, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [47, 'CO', 'COLOMBIE', 'Colombie', 'COL', 170, 57, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [48, 'KM', 'COMORES', 'Comores', 'COM', 174, 269, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [50, 'CD', 'RÉPUBLIQUE DÉMOCRATIQUE DU CONGO', 'République Démocratique du Congo', 'COD', 180, 242, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [51, 'CK', 'Iles Cook', 'Iles Cook', 'COK', 184, 682, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [54, 'HR', 'CROATIE', 'Croatie', 'HRV', 191, 385, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [56, 'CY', 'CHYPRE', 'Chypre', 'CYP', 196, 357, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [57, 'CZ', 'RÉPUBLIQUE TCHÉQUE', 'République Tchéque', 'CZE', 203, 420, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [58, 'DK', 'DENEMARK', 'Denemark', 'DNK', 208, 45, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [60, 'DM', 'DOMINIQUE', 'Dominique', 'DMA', 212, 1767, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [61, 'DO', 'RÉPUBLIQUE DOMINICAINE', 'République Dominicaine', 'DOM', 214, 1809, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [62, 'EC', 'EQUATEUR', 'Equateur', 'ECU', 218, 593, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [65, 'GQ', 'GUINÉE ÉQUATORIALE', 'Guinée équatoriale', 'GNQ', 226, 240, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [66, 'ER', 'ERYTRÉE', 'Erytrée', 'ERI', 232, 291, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [67, 'EE', 'ESTONIE', 'ESTONIE', 'EST', 233, 372, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [68, 'ET', 'ETHIOPIE', 'Ethiopie', 'ETH', 231, 251, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [69, 'FK', 'ÎLES MALOUINES', 'Îles Malouines', 'FLK', 238, 500, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [70, 'FO', 'ÎLES FÉROÉ', 'Îles Féroé', 'FRO', 234, 298, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [74, 'GF', 'GUIANE FRANÇAISE', 'Guiane française', 'GUF', 254, 594, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [75, 'PF', 'POLYNESIE FRANÇAISE', 'Polynesie française', 'PYF', 258, 689, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [76, 'TF', 'TERRES AUSTRALES ET ANTARCTIQUES FRANÇAISE', 'Terres Australes et Antarctiques Française', nil , nil , 0, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [78, 'GM', 'GAMBIE', 'Gambie', 'GMB', 270, 220, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [79, 'GE', 'GEORGIE', 'Georgie', 'GEO', 268, 995, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [80, 'DE', 'ALLEMAGNE', 'Allemagne', 'DEU', 276, 49, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [83, 'GR', 'GRECE', 'Grece', 'GRC', 300, 30, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [89, 'GN', 'GUINÉE', 'Guinée', 'GIN', 324, 224, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [90, 'GW', 'GUINÉE-BISSAU', 'GUINÉE-BISSAU', 'GNB', 624, 245, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [91, 'GY', 'GUYANE', 'GUYANE', 'GUY', 328, 592, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [92, 'HT', 'HAÏTI', 'Haiti', 'HTI', 332, 509, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [93, 'HM', 'ÎLES HEARD-ET-MACDONALD', 'Îles Heard-et-MacDonald', nil , nil , 0, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [94, 'VA', 'Saint Siège', 'Saint Siège', 'VAT', 336, 39, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [98, 'IS', 'ISLANDE', 'Islande', 'ISL', 352, 354, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [99, 'IN', 'INDE', 'INDE', 'IND', 356, 91, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [100, 'ID', 'INDONESIE', 'Indonesie', 'IDN', 360, 62, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [101, 'IR', 'Iran', 'Iran', 'IRN', 364, 98, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [103, 'IE', 'IRELANDE', 'IRELANDE', 'IRL', 372, 353, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [105, 'IT', 'ITALIE', 'ITALIE', 'ITA', 380, 39, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [106, 'JM', 'JAMAÏQUE', 'JAMAÏQUE', 'JAM', 388, 1876, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [107, 'JP', 'JAPON', 'Japon', 'JPN', 392, 81, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [108, 'JO', 'JORDANIE', 'JORDANIE', 'JOR', 400, 962, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [112, 'KP', 'Corée du nord', 'Corée du nord', 'PRK', 408, 850, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [113, 'KR', 'Corée du Sud', 'Corée du Sud', 'KOR', 410, 82, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [114, 'KW', 'Koweït', 'Koweït', 'KWT', 414, 965, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [115, 'KG', 'KIRGHIZISTAN', 'KIRGHIZISTAN', 'KGZ', 417, 996, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [116, 'LA', 'Laos', 'Laos', 'LAO', 418, 856, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [117, 'LV', 'LETTONIE', 'LETTONIE', 'LVA', 428, 371, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [118, 'LB', 'LIBAN', 'LIBAN', 'LBN', 422, 961, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [121, 'LY', 'LIBYE', 'LIBYE', 'LBY', 434, 218, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [123, 'LT', 'LITUANIE', 'Lituanie', 'LTU', 440, 370, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [126, 'MK', 'MACÉDOINE', 'Macédoine', 'MKD', 807, 389, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [129, 'MY', 'MALAISIE', 'MALAISIE', 'MYS', 458, 60, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [132, 'MT', 'MALTE', 'MALTE', 'MLT', 470, 356, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [133, 'MH', 'ÎLES MARSHALL', 'ÎLES MARSHALL', 'MHL', 584, 692, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [135, 'MR', 'MAURITANIE', 'Mauritanie', 'MRT', 478, 222, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [136, 'MU', 'MAURICE', 'Maurice', 'MUS', 480, 230, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [137, 'YT', 'MAYOTTE', 'Mayotte', nil , nil , 269, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [138, 'MX', 'MEXIQUE', 'MEXIQUE', 'MEX', 484, 52, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [139, 'FM', 'MICRONÉSIE', 'Micronesie', 'FSM', 583, 691, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [140, 'MD', 'MOLDAVIE', 'Moldavie', 'MDA', 498, 373, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [142, 'MN', 'MONGOLIE', 'Mongolie', 'MNG', 496, 976, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [144, 'MA', 'MAROC', 'Maroc', 'MAR', 504, 212, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [147, 'NA', 'NAMIBIE', 'Namibie', 'NAM', 516, 264, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [150, 'NL', 'PAYS-BAS', 'Pays-Bas', 'NLD', 528, 31, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [151, 'AN', 'ANTILLES NÉERLANDAISES', 'Antilles Néerlandaises', 'ANT', 530, 599, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [152, 'NC', 'NEW CALEDONIE', 'New Caledonie', 'NCL', 540, 687, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [158, 'NF', 'ÎLES NORFOLK', 'Îles Norfolk', 'NFK', 574, 672, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [159, 'MP', 'ÎLES MARIANNES DU NORD', 'Îles Mariannes du Nord', 'MNP', 580, 1670, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [160, 'NO', 'Norvège', 'Norvège', 'NOR', 578, 47, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [163, 'PW', 'PALAOS', 'PALAOS', 'PLW', 585, 680, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [164, 'PS', 'TÉRRITOIRES PALESTINIENS OCCUPÉS', 'Térritoires Palestiniens Occupés', nil , nil , 970, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [170, 'PN', 'ÎLES PITCAIRN', 'Îles Pitcairn', 'PCN', 612, 0, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [171, 'PL', 'POLOGNE', 'Pologne', 'POL', 616, 48, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [176, 'RO', 'ROMANIE', 'Romanie', 'ROM', 642, 40, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [177, 'RU', 'RUSSIE', 'Russie', 'RUS', 643, 70, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [179, 'SH', 'SAINT HELENE', 'Saint Helene', 'SHN', 654, 290, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [180, 'KN', 'SAINT-CHRISTOPHE-ET-NIÉVÈS', 'Saint-Christophe-et-Niévès', 'KNA', 659, 1869, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [181, 'LC', 'SAINTE-LUCIE', 'Sainte-Lucie', 'LCA', 662, 1758, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [182, 'PM', 'SAINT PIERRE ET MIQUELON', 'Saint Pierre et Miquelon', 'SPM', 666, 508, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [183, 'VC', 'SAINT VINCENT ET LES GRENADINES', 'Saint Vincent et les Grenadines', 'VCT', 670, 1784, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [187, 'SA', 'ARABIE SAUDITE', 'arabie SaudiTE', 'SAU', 682, 966, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [188, 'SN', 'SÉNÉGAL', 'Sénégal', 'SEN', 686, 221, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [189, 'CS', 'SERBIE MONTENEGRO', 'Serbie Montenegro', nil , nil , 381, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [193, 'SK', 'SLOVAKIE', 'Slovakie', 'SVK', 703, 421, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [194, 'SI', 'SLOVENIE', 'Slovenie', 'SVN', 705, 386, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [195, 'SB', 'ÎLES SOLOMON', 'Îles Solomon', 'SLB', 90, 677, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [196, 'SO', 'SOMALIE', 'Somalie', 'SOM', 706, 252, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [197, 'ZA', 'AFRIQUE DU SUD', 'AFRIQUE DU SUD', 'ZAF', 710, 27, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [198, 'GS', 'GÉORGIE DU SUD ET LES ÎLES SANDWISH DU SUD', 'Géorgie du Sud et les Îles Sandwish du Sud', nil , nil , 0, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [199, 'ES', 'ESPAGNE', 'Espagne', 'ESP', 724, 34, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [201, 'SD', 'SOUDAN', 'Soudan', 'SDN', 736, 249, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [203, 'SJ', 'SVALBARD ET JAN MAYEN', 'Svalbard et Jan Mayen', 'SJM', 744, 47, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [205, 'SE', 'Suède', 'Suède', 'SWE', 752, 46, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [206, 'CH', 'Suisse', 'Suisse', 'CHE', 756, 41, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [207, 'SY', 'SYRIE', 'Syrie', 'SYR', 760, 963, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [208, 'TW', 'TAIWAN', 'Taiwan', 'TWN', 158, 886, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [210, 'TZ', 'TANZANIE', 'Tanzanie', 'TZA', 834, 255, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [211, 'TH', 'THAÏLANDE', 'Thaïlande', 'THA', 764, 66, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', nil , nil , 670, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [217, 'TN', 'TUNISIE', 'Tunisie', 'TUN', 788, 216, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [218, 'TR', 'TURQUIE', 'Turquie', 'TUR', 792, 90, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [219, 'TM', 'TURKMÉNISTAN', 'Turkménistan', 'TKM', 795, 7370, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [220, 'TC', 'ÎLES TURQUES-ET-CAÏQUES', 'Îles Turques-et-Caïques', 'TCA', 796, 1649, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [222, 'UG', 'OUGANDA', 'Ouganda', 'UGA', 800, 256, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [224, 'AE', 'EMIRATS ARABES UNIS', 'Emirats Arabes Unis', 'ARE', 784, 971, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [225, 'GB', 'Royaume-Uni', 'United Kingdom', 'GBR', 826, 44, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [226, 'US', 'ÉTATS-UNIS', 'États-Unis', 'USA', 840, 1, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [227, 'UM', 'ÎLES MINEURES ÉLOIGNÉES DES ÉTATS-UNIS', 'ÎLES MINEURES ÉLOIGNÉES DES ÉTATS-UNIS', nil , nil , 1, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [229, 'UZ', 'Ouzbékistant', 'Ouzbékistant', 'UZB', 860, 998, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [233, 'VG', 'ÎLES VIERGES BRITANIQUES', 'Îles Vierges Britaniques', 'VGB', 92, 1284, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [234, 'VI', 'Îles Vierges des États-Unis', 'Îles Vierges des États-Unis', 'VIR', 850, 1340, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [235, 'WF', 'WALLIS-ET-FUTUNA', 'Wallis-et-Futuna', 'WLF', 876, 681, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [236, 'EH', 'SAHARA OCCIDENTAL', 'Sahara Occidental', 'ESH', 732, 212, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1],
    [239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, '2016-11-01 00:00:00', '2016-11-01 00:00:00', 1]
]

countries.each do |country|
  Admin::Country.create(
      :id => country[0], :iso => country[1], :name => country[2],
      :nicename => country[3], :iso3 => country[4], :numcode => country[5],
      :phonecode => country[6], :created_at => country[7], :updated_at => country[8], :status => country[9]
  )
end

#Admin::Domain.delete_all
12.times do
  domain = Admin::Domain.create(
      name: Faker::Company.industry,
      description: Faker::Lorem.paragraph(2),
      :status => 1,
      :created_at => Time.now.utc,
      :updated_at => Time.now.utc
      )
  #adding templates
	Admin::Template.create(
		:name => Faker::Name.name,
		:domain_id => domain.id,
		:views => 0,
		:status => 1
		)
end

#Admin::Company.delete_all
12.times do
  domain = Admin::Domain.offset(rand(Admin::Domain.count)).first()
  Admin::Company.create(
      :name => Faker::Company.name,
      :description => Faker::Lorem.paragraph(2),
      :legal_status => Faker::Company.ein,
      :address => Faker::Address.street_address,
      :domain_id => domain.id,
      :status => 1,
      :exist_since => Faker::Date.between(2.days.ago, Date.today),
      :created_at => Time.now.utc,
      :updated_at => Time.now.utc
  )
end

#Admin::School.delete_all
6.times do
  country = Admin::Country.offset(rand(Admin::Country.count)).first()
  Admin::School.create(
      :name => Faker::University.name,
      :address => Faker::Address.city,
      :country_id => country.id,
      :status => 1,
      :created_at => Time.now.utc,
      :updated_at => Time.now.utc
  )
end


#Admin::User.delete_all
12.times do
  country = Admin::Country.offset(rand(Admin::Country.count)).first()
  user = Admin::User.new(
            :name => Faker::Name.name,
            :firstname => Faker::Name.first_name,
            :email => Faker::Internet.email,
            :password => 'passer',
            :title => Faker::Job.title,
            :birth_date => Faker::Date.between_except(10.year.ago, 50.year.from_now, Date.today),
            :birth_place => Faker::Address.city,
            :address => Faker::Address.city,
            :country_id => country.id,
            :views => Faker::Number.number(3),
            :status => 1,
            :created_at => Time.now.utc,
            :updated_at => Time.now.utc
        )
  user.save!
  #adding schools to user
  school = Admin::School.offset(rand(Admin::School.count)).first
  Admin::Education.create(
      :school_id => school.id,
      :user_id => user.id,
      :degree => Faker::Lorem.sentence(3, false, 2),
      :graduation_year => Faker::Date.between_except(1.year.ago, 1.year.from_now,Date.today),
      :description => Faker::Lorem.paragraph(4),
      :address => Faker::Address.city
  )
  #adding to user
  hobbies 	= ['sport', 'reading', 'cooking', 'long work']
  hobby 	= Admin::Hobby.create(
      :name => hobbies.sample,
      :user_id => user.id,
      :icon => '',
      :status => 1
  )
  #adding company to users
  company = Admin::Company.offset(rand(Admin::Company.count)).first
  Admin::Experience.create(
      :title => Faker::Job.title,
      :company_id => company.id,
      :user_id => user.id,
      :description => Faker::Lorem.paragraph(3),
      :started_at => Faker::Date.between_except(5.year.ago, 1.year.from_now, Date.today),
      :ended_at => Faker::Date.between_except(3.year.ago, 1.month.from_now, Date.today),
      :still_there => false,
      :status => 1
  ) 
  #create achievement
  Admin::Achievement.create(
  		user_id: user.id,
  		title: Faker::Lorem.sentence(2),
  		description: '',
  		status: 1
  	) 
  #create achievement
  Admin::Award.create(
  		user_id: user.id,
  		title: Faker::Lorem.sentence(2),
  		description: ''
  	)
  #create achievement
  skill = Admin::Skill.create(
  		name: Faker::Lorem.sentence(2),
  		status: 1
  	)
  #join skill and user
  user.skills << skill
  #adding resume
  resume = Admin::Resume.create(
  		:name     => Faker::Name.name,
      :user_id  => user.id,
      :code => SecureRandom.uuid,
      :status   => 1,
  	)
  #joinning hobbies users
  user.hobbies << hobby 
  #joinning language to resume
  language = Admin::Language.all.sample
  resume.languages << language
  #joinning template resumes
  template = Admin::Template.all.sample
  resume.templates << template
end


