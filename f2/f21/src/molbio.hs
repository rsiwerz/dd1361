module Molbio where

import           F2

-- The function seqdata converts the datasets in this file to MolSeq if
-- you have defined string2seq! Just write (for example)
--     seqdata foxp4
-- to convert the lists below to a list of sequences.
--
seqdata = map (\(n,s) -> string2seq n s)

-- Simple example from figure 1 in the problem statement:
figur =  [("T1", "ACATAA"), ("T2", "AAGTCA"), ("T3", "ACGTGC"), ("T4", "AAGTTC"), ("T5", "ACGTAA")]

-- Two simple datasets
simple = [("S1", "ACGTACGT"), ("S2", "ACCTACCT"), ("S3", "AGGAAGGT"), ("S4", "ACGAAGGA"), ("S5", "AAGGAAGG")]
sample = [("S1", "ACGTACGT"), ("S2", "CCCTACCT"), ("S3", "AGGAAGGT"), ("S4", "CCGAAGGA"), ("S5", "AAGGAAGG")]

-- Test an operation on the first two elements of a list
snabbtest de l = de s1 s2
   where sl = l
         s1 = sl !! 0
         s2 = sl !! 1

-- Six FOXP4 proteins
foxp4 = [("FOXP4_HUMAN", "EMSPAELLHFQQQQALQVARQFLLQQASGLSSPGNNDSKQSAVQVPVSVAMMSPQMLTPQQMQQILSPPQLQALLQQQQALMLQQLQEYYKKQQEQLHLQLLTQQQAGKPQPKEALGNKQLAFQQQLLQMQQLQQQHLLNLQRQGLVSLQPNQASGPLQTLPQAVCPTDLPQLWKGEGAPAEDSVKQEGLDLTGTAATSFAAPKVSPPLSHHTLPNGQPTRRDSSSHEETSPLYGHGECKWPGCETLCEDLGQFIKHLNTEHALDDRSTAQCRVQMQVVQQLEIQLRLQAMMAHLHMRPSEPKPFSQPVTVSADSFPDGLVHPPTSAAAPVTPLRPPGLGSASLHGGGPARRRSSDKFCSPISSELAQNHEFYKNADVRPPFTYASLIRQAILETPDRQLTLNEIYNWFTRMFAYFRRNTATWKNAVRHNLSLHKCFVRVENVKGAVWTVDEREYQKRRPPKMTGSPTLVKNMISGLSYGALNASYQAALAESSFPLLNSPGMLNSASSLLPLSHDDVGAPVEPLPSNGSSPRLSPQYSHQVQVKEEPAEEDRQPGPLGAPNPSASGPPEDRDLEEELPGEEL"),
   ("FOXP4_COW", "EMSPAELLHFQQQQALQVARQFLLQQASGLSSPGNNDSKQSAVQVPVSVAMMSPQMLTPQQMQQILSPPQLQALLQQQQALMIQQLQEYYKKQQEQLHLQLLTQQQAGKQQPKEALGNKQLAFQQQLLQMQQLQQQHLLNLQRQGLVSLQPSQASGPLQTLPQAVCPTDLPQLWKGEGAPAEDSVKQEGLDLTGTATTSFAAPKVSPPLSHHTLPNGQPTRRDSWGLALTAAIVGAGGLLLPGHTKLCSACGEPVRHLNTEHALDDRSTAQCRVQMQVVQQLEIQVWPQAVGAGRGGAPARPKPFSQPVTVSADSFPDGLAHPPTSAAAPVTPLRPPGLGSASLHSGGPARRRSSDKFCSPISSELAQNHEFYKNADVRPPFTYASLIRQAILETPDRQLTLNEIYNWFTRMFAYFRRNTATWKNAVRHNLSLHKCFVRVENVKGAVWTVDEREYQKRRPPKMTGSPTLVKNMISGLSYGTLNASYQAALAESSFPLLNSPGMLNSASSLLPLGHDDAGAPVEPLPSNGSSPRLSPQYSHQVQVKEEPAEEDRRPGPMGPPNPSTAGPPEDRDLEEELPGEEL"),
   ("FOXP4_DOG", "EMSPAELLHFQQQQALQVARQLLLQQASGLSSPGNNDSKQSAVQVPVSVAMMSPQMLTPQQMQQILSPPQLQALLQQQQALMLQQLQEYYKKQQEQLHLQLLTQQQAGKQQPKEGVGRADCTFRDALLPTWSSPQQHRRNQQRQGLVSLQPSQASGPLQTLPQAVCPTDLPQLWKGEGAPAEDSVKQEGLDLTGSATTSFAAPKVSPPLSHHTLPNGQPTRRDSSSHEETSPLYGHGECKWPGCETLCEDLGQFIKHLNTEHALDDRSTAQCRVQMQVVQQLEIQLRLQAMMAHLHMRPSEPKPFSQPVTVSADSFPDGLVHPPTSAAAPVTPLRPPGLSSASLHSGGPARRRSSDKFCSPISSELAQNHEFYKNADVRPPFTYASLIRQAILETPDRQLTLNEIYNWFTRMFAYFRRNTATWKNAVRHNLSLHKCFVRVENVKGAVWTVDEREYQKRRPPKMTGSPTLVKNMISGLSYGALNASYQAALAESSFPLLNSPGMLNSASSLLPLSHDEVGAPVEPLPSNGSSPRLSPQYSHQVQVKEEPAEEDRRPGPLGPPNPSTAGPPEDRDLEEELPGEEL"),
   ("FOXP4_RAT", "EMSPAELLHFQQQQALQVARQFLLQQASSLNSPGNNDSKQSAVQVPVSVAMMSQQMLTPQQMQQILSPPQLQALLQQQQALMLQQLQEYYKKQQEQLHLQLLSQQQAGKQQPKEALGNKQLAFQQQLLQMQQLQQQHLLNLQRQGLVSLQPSQASGPLQALPQAVCPTDLPQLWKGEGAPAEDGGRQEGLDLASPAATSFASPKVSPPLSHHPLPNGQPTRRDSSSHEETSPLYGHGECKWPGCETLCEDLGQFIKHLNTEHALDDRSTAQCRVQMQVVQQLEIQLRLQAMMAHLHMRPSEPKPFSQPVTVSADPFPDGLVHPPTSAAAPVTPLRPPGLGSASLHGGGPARRRSNDKFCSPISSELAQNHEFYKNADVRPPFTYASLIRQAILETPDRQLTLNEIYNWFTRMFAYFRRNTATWKNAVRHNLSLHKCFVRVENVKGAVWTVDEREYQKRRPPKMTGSPTLVKNMISGLSYGALNASYQAALAESSFPLLSSPGMLNSASSLLPLSQDDMGAPGEPLPSNGSSPRLSPQYSHQIQVKEEPAEEDRRPGPLGAPNPSTVGPPEDRDLEEDLAGEDI"),
   ("FOXP4_MOUSE", "EMSPAELLHFQQQQALQVARQFLLQQASSLNSPGNNDSKQSAVQVPVSVAMMSQQMLTPQQMQQILSPPQLQALLQQQQALMLQQLQEYYKKQQEQLHLQLLTQQQAGKQQPKEALGNKQLAFQQQLLQMQQLQQQHLLNLQRQGLVSLQPSQASGPLQALPQAVCPTDLPQLWKGEGAPAEDSGRQEGLDLASTAVTSFASPKVSPPLSHHPLPNGQPTRRDSSSHEETSPLYGHGECKWPGCETLCEDLGQFIKHLNTEHALDDRSTAQCRVQMQVVQQLEIQLRLQAMMAHLHMRPSEPKPFSQPVTVSADPFPDGLVHPPTSAAAPVTPLRPPGLGSASLHSGGPARRRSNDKFCSPISSELAQNHEFYKNADVRPPFTYASLIRQAILETPDRQLTLNEIYNWFTRMFAYFRRNTATWKNAVRHNLSLHKCFVRVENVKGAVWTVDEREYQKRRPPKMTGSPTLVKNMISGLSYGALNASYQAALAESSFPLLSNPGMLNSASSLLPLSQEDLGVPGEPLPSNGSSPRLSPQYSHQIQVKEEPAEEDRRPGPLGAPNPSTVGPPEDRDLEEDLGGEDI"),
   ("FOXP4_FROG", "ELSPAELLHFQQQQALQMARQLLLQQATGLSSPSSTDNKQPSVQVPVSVAMMSPGMITPQQMQQILSPTQLQAVLQQQQALMLQQLQEYYKKQQEQLHLQLLSQQQAGKQQPKESLGNKQLAFQQQLLQMQQLQQQHLLNLQRQNLVGLQSGQGPLPIQSLPQAVSPSDLQQLLKEMSSNQEESSKQDTVDLTTSITTSFPNSKVSLPTIHPSLPNGQNTRRDSMSHYESSPLYGHGECRWPGCEALCEDMGQFIKHLNTEHALDDRSTAQCRVQMQVVQQLEIQLRLQAMMTHLHMRPSEPKPFSQPNKMSPDTFPDGLPQPPTSATAPITPLRTSVISSSSLPSVGPVRRRIVDKFSTPISSELAQNHEFYKNAEVRPPFTYASLIRQAILDTPDRQLTLNEIYNWFTRMFAYFRRNTATWKNAVRHNLSLHKCFVRVENVKGAVWTVDELEYQKRRPPKMTGSPTLVKNMISGLGYSALNASYQAALAESSFPLLNSPPLHNSSGSVLHGGHDDVTSTGEPGNSNGSSPRLSPQYSQSIHVKEEPAEDDVRPASLSAPTNQTTVLPEDRDIEPETPMEDL")]


-- Below follows protein sequences taken from six sets of nuclear hormone receptors.
-- The data has been simplified, but this is essentially what a researcher would
-- use when studying the evolutionary history among this class of receptors.
-- The six sets represents different subfamilies of receptors.
--
fam1 = [("PPRA_Human","VETVTELTEFAKAIPAFANLDLNDQVTLLKYGVYEAIFAMLSSVMNKDVAYGNGFITRDIMEPKFDFAMALELDDSDISLFVAAIICCPGLLNVGIEKMEGILHLQSNHPEQE"),
 ("PPRA_Mouse","VETVTELTEFAKAIPGFANLDLNDQVTLLKYGVYEAIFTMLSSLMNKDAYGNGFITREDIMEPKFDFAMALELDDSDISLFVAAIICCPGLLNIGIEKLEGILHLQSNHPEQE"),
 ("PPRB_Zfish","VETVRELTEFAKNIPGFVDLFLNDQVTLLKYGVHEAIFAMLPSLMNKDVANGKGFVTREIMEPKFEFAVALELDDSDLALFVAAIILCPGLMNVKVEQIDGIQHLQVHHPEQE"),
 ("PPRB_Human","VETVRELTEFAKSIPSFSSLFLNDQVTLLKYGVHEAIFAMLASIVNKDVANGSGFVTRDIIEPKFEFAVALELDDSDLALFIAAIILCPGLMNVPVEAIDTIFHLQANHPEQE"),
 ("PPRB_Mouse","VETVRELTEFAKNIPNFSSLFLNDQVTLLKYGVHEAIFAMLASIVNKDLVANGSGFVTDIIEPKFEFAVALELDDSDLALFIAAIILCPGLMNVPVEAIDTIFHLQVNHPEQE"),
 ("PPRG_Human","VEAVQEITEYAKSIPGFVNLDLNDQVTLLKYGVHEIIYTMLASLMNKDSEGQGFMTREDFMEPKFEFAVALELDDSDLAIFIAVIILSPGLLNVKIEDIDNLLQLKLNHPEQE"),
 ("PPRG_Mouse","VEAVQEITEYAKNIPGFINLDLNDQVTLLKYGVHEIIYTMLASLMNKDSEGQGFMTREDFMEPKFEFAVALELDDSDLAIFIAVIILSPGLLNVKIEDIDNLLQLKLNHPEQE")]

fam2 = [("HNFA_Zfish","KQQLLVLVEWAKYIPAFCDLPLDDQVALLRAHAGEHLLLGAAKRSMMYLLGNDHIIPRVAVRILDELVLDLQIDDNEYACLKAIVFFDKGLSDPSIKRMYQVDYINDRQYQEF"),
 ("HNFA_Human","KEQLLVLVEWAKYIPAFCELPLDDQVALLRAHAGEHLLLGATKRSMVFLLGNDYIVPRVSIRILDELVLELQIDDNEYAYLKAIIFFDKGLSDPGIKRLSQVDYINDRQYQEF"),
 ("HNFA_Mouse","KEQLLVLVEWAKYIPAFCELLLDDQVALLRAHAGEHLLLGATKRSMVFLLGNDYIVPRVSIRILDELVLELQIDDNEYACLKAIIFFDKGLSDPGIKRLSQVDYINDRQYQEF"),
 ("HNFG_Human","KQQLLVLVEWAKYIPAFCELPLDDQVALLRAHAGEHLLLGATKRSMMYLLGNNYVIHRRVANRVLDELVEIQIDDNEYACLKAIVFFDKGLSDPVIKNMFQVDYINDRQYQEF"),
 ("HNFG_Mouse","KQQLLVLVEWAKYIPAFCELPLDDQVALLRAHAGEHLLLGATKRSMMYLLGNHYVIHRRVANRVLDELVEIQIDDNEYACLKAIVFFDKGLSDPVIKNMFQVDYINDRQYQEF"),
 ("HNF_Fly","KQQLLTLVEWAKQIPAFNELQLDDQVALLRAHAGEHLLLGLSRRSMHLLLSNNCVITRIGARIIDELVTDVGIDDTEFACIKALVFFDKGLNEPHIKSLHQIDYISDRQYQEF")]

fam3 = [("ERB_Human","DKELVHMISWAKKIPGFVELSLFDQVRLLESCWMEVLMMGLMWRSIDHIFAPDLVLDRGILEIFDMLLAELKLQHKEYLCVKAMILLNQDADSSRLAHLNAVWVIAKSGIKEN"),
   ("ERB_Mouse","DKELVHMIGWAKKIPGFVELSLLDQVRLLESCWMEVLMVGLMWRSIDHIFAPDLVLDRGILEIFGMLLAELKLQHKEYLCVKAMILLNQEAESSRLTHLNAVWVISKSGIKEN"),
   ("ERB_Zfish","DKELVLMISWAKKIPGFVELTLSDQVHLLECCWLDILMLGLMWRSVDHIFTPDLKLNRGIMEIFDMLLAELKLQREEYVCLKAMILLNEDVESRGVLNLDSVWIISRTGLKEN"),
   ("ERA_Human","DRELVHMINWAKRVPGFVDLTLHDQVHLLECAWLEILMIGLVWRSMEHLFAPNLLLDRGMVEIFDMLLAMMNLQGEEFVCLKSIILLNKSLEEKDIHRVDKIHLMAKAGLKEN"),
   ("ERA_Mouse","DRELVHMINWAKRVPGFGDLNLHDQVHLLECAWLEILMIGLVWRSMEHLFAPNLLLDRGMVEIFDMLLAMMNLQGEEFVCLKSIILLNKSLEEKDIHRVDKIHLMAKAGLKEN"),
   ("ERA_Zfish","DKELVHMIAWAKKVPGFQDLSLHDQVQLLESSWLEVLMIGLIWRSIHSIFAQDLILDRGMAEIFDMLLASLKLKLEEFVCLKAIILINEPLMDNFVQCMDNIYCISKSGAKEN"),
   ("ERR_Fly","DKELVSVIGWAKQIPGFIDLPLNDQMKLLQVSWAEILTLQLTFRSLPFCFATDVWMDEYTEFYYHCVQIRISPRREEYYLLKALLLANILLDDQSLRAFDTIDVVYLLRHIRD"),
   ("ERA_Chicken","DRELVHMINWAKRVPGFVDLTLHDQVHLLECAWLEILMIGLVWRSMEHLFAPNLLLDRGMVEIFDMLLAMMNLQGEEFVCLKSIILLNKSLEERDIHRVDKIHLMAKSGLKEN"),
   ("ERB_Chicken","DKELVHMIGWAKKIPGFIDLSLYDQVRLLESCWMEVLMIGLMWRSIDHIFAPDLVLDRGILEIFDMLLAELKLQHKEYLCVKAMILLNSPEEPESLHHLNVVWVIAKSGIKEN")]

fam4 = [("4A1_Human","SGSLEVIRKWAEKIPGFAELSPADQDLLLESAFLELFILRLAYRSKPGIFCSGLVLHRDWIDSILAFSRSLLVDVPAFACLSALVLITHGLQEPRVEELNRIEHVAAVAGQQD"),
   ("4A1_Mouse","SGSLDVIRKWAEKIPGFIELCPGDQDLLLESAFLELFILRLAYRSKPGIFCSGLVLHQDWIDNILAFSRSLGVDVPAFACLSALVLITHGLQDPRVEELNRIEHMATVAGQQD"),
   ("4A2_Human","TGSMEIIRGWAEKIPGFADLPKADQDLLFESAFLELFVLRLAYRSNPVIFCNGVVLHREWIDSIVEFSSNMNIDISAFSCIAALAMVTHGLKEPKVEELNKIDHVTFNNGQQD"),
   ("4A3_Human","TASIDVSRSWAERIPGFTDLPKEDQTLLIESAFLELFVLRLSIRSNTAVFCNGLVLHREWLDSIKDFSLSLNLDIQALACLSALSMITHGLKEPKVEELNKIDHQSKGQALQD"),
   ("4A3_Mouse","TASIDVSRSWAEKIPGFTDLPKEDQTLLIESAFLELFVLRLSIRSNTAVFCNGLVLHREWLDSIKDFSLSLNLDIQALACLSALSMITHGLKEPKVEELTKIDHQRKGQAQQD"),
   ("4A4_Fly","TSSVDVIKQFAEKIPGYFDLLPEDQELLFQSASLELFVLRLAYRARIDIFCNGTVLHREWLNDIMEFSRNLEIDISAFACLCALTLITHGLREPKVEQLMKIDHVTYNAEQQD")]

fam5 = [   ("5A1_Human","DQTFISIVDWARRCMVFKELEVADQMTLLQNCWSELLVFDHIYRQVQHLLVTGQEVELSLVLRAQELVLALQLDRQEFVCLKFIILFSKFLNNHIVKDAEKADYTLCHYPQEG"),
   ("5A2_Zfish","DQTLFSIVEWARSSIFFRELKVDDQMKLLQNCWSELLILDHVFRQVMHLLVTGQQVDYNLLSHAQELVSSLQLDQREFVCLKFLVLFSKNLENFHVESVEQVDYVMCNYPQEN"),
   ("5A2_Human","DQTLFSIVEWARSSIFFRELKVDDQMKLLQNCWSELLILDHIYRQVVHFLVTGQQVDYNLMSHAQELVASLQFDQREFVCLKFLVLFSKNLENFQVEGVEQVDYTMCNYPQEN"),
   ("5A2_Mouse","DQTLFSIVEWARSSIFFRELKVDDQMKLLQNCWSELLILDHIYRQVAHFLVTGEHVDYNLLSLAQELVVSLQFDQREFVCLKFLVLFSKNLENLQVEGVEQVDYTVCNYPQDN"),
   ("5A3_Worm","EENLKDIVIWAKNDQLFSKLSLDDQMILLQTSWTTVHIVDITNAMVHGKMSNGDEVPVTFVSSWNDVVINMGFTNFDYCAFRFLALFDPAVSTARLQSWEVRLEIFEQIRPST"),
   ("5A3_Fly","DQNLFSQVDWARNTVFFKDLKVDDQMKLLQHSWSDMLVLDHLHHRIHNQLNNGQVFNLQPGDYFNELQNDLKFDMGDYVCMKFLILLNRGIVNRKVSEGDNVDYTLTCYPRDP"),
   ("5A4_Zfish","DQTLFSIVEWARSCVFFKELKVGDQMRLLHNCWSELLLLDHICRQVHHLLITGQEVELSMVERGQDLSRLLQVDSREMACLKFLILFNKLLENPQVESVEQVEYTLFSYPEDC"),
   ("5A4_Zfish","DQTLFSIVEWARSCIFFKELKVGDQMKLLHNCWSELLVLDYVARQLHHLLITGQEVELGMIQRGQELVQELQLDRRETACLKYLILFNKLLENQPVESVEQVEYTLCAYPQDS"),
   ("5A5_Zfish","DQTLFGLVEWARNCELFKELKVDDQMVLLQSCWSELLVLDHLCRQVAYCLITGQQIEASLVSRAQDLVTSLQLDREEFVCLKYLVLFNKSVQNRRVEQTERVDHTMQTHPQEG"),
   ("5B1_Fly","DHRLYKIVKWCKSLPLFKNISIDDQICLLINSWCELLLFSCCFRSIDTKMSQGRKITLTCIERMLNLTDRLRVDRYEYVAMKVIVLLQTELQEAVVRECEKAAYTLAHYPLEG")]


-- These functions gives a lot of output...
famseqs = zip ["fam1", "fam2", "fam3", "fam4", "fam5"] (map seqdata [fam1, fam2, fam3, fam4, fam5])
profiles = [molseqs2profile name fam | (name, fam) <- famseqs]


-- A few quick tests

test1 = seqdata figur

-- Should return 0.51986038541...
seqDistTest1 = snabbtest seqDistance (seqdata sample)

-- Should return 0.823959216....
seqDistTest2 = snabbtest seqDistance (seqdata figur)

-- Should return 8.9884522874703...e-2
seqDistTest3 = snabbtest seqDistance (seqdata foxp4)

-- Should return 0.4715202300418...
seqDistTest4 = snabbtest seqDistance (seqdata fam5)


test2 = molseqs2profile "profile for figure 1" (seqdata figur)

 -- Should return 0.28571542857...
profileFreqTest1 = profileFrequency (head profiles) 17 'V'

 -- Should return 0.0
profileFreqTest2 = profileFrequency (head profiles) 42 'F'

-- -- Should return 171.14285714...
profileDistTest = snabbtest profileDistance profiles


-- Should produce the following matrix (values rounded):
--         human   cow     dog     rat     mouse   frog
-- human     0.0   0.090   0.055   0.051   0.055   0.245
-- cow             0.0     0.119   0.126   0.124   0.314
-- dog                     0.0     0.090   0.090   0.272
-- rat                             0.0     0.017   0.256
-- mouse                                   0.0     0.259
-- frog                                            0.0
distMatrixTest1 = distanceMatrix (seqdata foxp4)

-- Should produce the following matrix (values rounded):
--        fam1    fam2    fam3    fam4    fam5
---fam1     0.0   171.1   176.8   167.2   179.3
---fam2             0.0   151.7   161.3   151.2
---fam3                     0.0   160.0   154.1
---fam4                             0.0   167.0
---fam5                                     0.0
distMatrixTest2 = distanceMatrix profiles
