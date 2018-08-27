require ''


module Cups::Rollo
  VERSION = "0.1.0"

  # TODO: Put your code here
end




# for (int pageN = 0; pageN < document.GetPageCount(); pageN++) {
#   PdfPage* page = document.GetPage(pageN);
#   PdfDictionary resource = page->GetResources()->GetDictionary();
#
#   for (auto& k : resource.GetKeys()) {
#     if (k.first.GetName() == "XObject" || k.first.GetName() == "Image") {
#       if (k.second->IsDictionary()) {
#         auto targetDict = k.second->GetDictionary();
#         for (auto& r : k.second->GetDictionary().GetKeys()) {
#           // The XObject will usually contain indirect objects as it's values.
#           // Check for a reference
#           if (r.second->IsReference()) {
#             // Get the object that is being referenced.
#             auto target =
#               document.GetObjects().GetObject(r.second->GetReference());
#             if (target->IsDictionary()) {
#               auto targetDict = target->GetDictionary();
#               auto kf = targetDict.GetKey(PdfName::KeyFilter);
#               if (!kf)
#                 continue;
#               if (kf->IsArray() && kf->GetArray().GetSize() == 1 &&
#                   kf->GetArray()[0].IsName() &&
#                   kf->GetArray()[0].GetName().GetName() == "DCTDecode") {
#                 kf = &kf->GetArray()[0];
#               }
#               if (kf->IsName() && kf->GetName().GetName() == "DCTDecode") {
#                 ExtractImage(target, true);
#               } else {
#                 ExtractImage(target, false);
#               }
#             }
#           }
#         }
#       }
#     }
#   }
# }
