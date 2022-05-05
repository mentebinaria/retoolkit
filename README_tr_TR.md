__Türkçe__ || [English](./README.md) || [Français](./README_fr_FR.md) || [中文简体](./README_zh_CN.md)

# Tersine Mühendis'in Araç Takımı

## Nedir?

x86 ve x64 Windows sistemlerde tersine mühendislik ve/veya zararlı yazılım analizine meraklı olanların beğenebileceği bir araç koleksiyonudur. Bu programı indirdikten sonra araçlara erişmek için iki seçeneğiniz olacak:

* Masaüstündeki `retoolkit` simgesine çift tıklayın.
* Bir dosyaya sağ tıklayın, `Gönder -> retoolkit`'i seçin. Böylelikle seçilen dosya, istenen programa argüman olarak verilmiş olur.

![](assets/retoolkit.gif)

# Neden ihtiyacım var?

İhtiyacınız yok. Açıkçası, yeni bir sanal makine içerisine bu tür araçları kendi web sitelerinden indirebilirsiniz. Ama eğer retoolkit'i indirirseniz, muhtemelen zamandan tasarruf edersiniz. Buna ilaveten, araçlar önceden yapılandırıldığından dolayı; birkaç eklentiye sahip x64dbg, her dizinden çalışan komut satırı araçları vb. gibi şeyler bulacaksınız. Eğer yeni bir analiz sanal makinesi kuruyorsanız, bunu beğenebilirsiniz.

# İndir

Görmüş olduğunuz *.iss dosyaları, [Inno Setup](https://jrsoftware.org/isinfo.php) ile oluşturulmuş kurulum dosyamızın kaynak kodlarıdır. Aracın kendisini indirmek için, [Yayınlar](https://github.com/mentebinaria/retoolkit/releases) bölümüne gidip kurulum programını indirmelisiniz.

# Dahil edilen araçlar

Detaylı bir liste için [wiki](https://github.com/mentebinaria/retoolkit/wiki)'ye bir göz atın.

# Kendi ortamıma kurmak güvenli mi?

Bilmiyorum. Dahil edilen araçlardan bazıları açık kaynak değil ve karanlık alemlerden geliyorlar. Bu programı sadece sanal makinelerde ve kendi sorumluluğunuzda kullanmalısınız.

# X aracını ekleyebilir miyim?

Bu değişkendir. Anafikir projeyi basit tutmaktır. Sadece burada olmadığından dolayı bir aracı ekleyemeyiz. Ama eğer iyi bir sebebinizin olduğunu düşünüyorsanız, ve lisans bize yazılımı yeniden dağıtmak için izin verirse, lütfen [buradan yeni bir konu açın](https://github.com/mentebinaria/retoolkit/issues?q=label%3Atool-request+)

# Değişim kütüğü

### 2022.04

* Eklenenler:
    * Echo Mirage
    * elfparser-ng
    * entropy \[[#47](https://github.com/mentebinaria/retoolkit/issues/47)\]
    * Force Toolkit
    * MiniDump x64dbg eklentisi
    * Notepad++
    * OllyDumpEx x64dbg eklentisi \[[#41](https://github.com/mentebinaria/retoolkit/issues/41)\]
* Çıkarılanlar:
    * Bewareircd: Şimdilerde nadir IRC tabanlı haberleşmeleri analiz etmek için fazla özgül.
    * dnSpy: dnSpyEx ile değiştirildi.
    * HyperDBG: İyi bir proje, fakat henüz binary yayınlamadıklarından dolayı benim için çok fazla iş çıkacaktı.
    * JRE: Ghidra tarafından ihtiyaç duyulan JDK ile değiştirildi.
    * Threadtear: Ghidra tarafından ihtiyaç duyulan JDK ile çalışmıyor.

### 2021.10

* Evet, Ubuntu yayınlarından ödünç alınan yeni versiyon numaralandırma şeması :)
* OLE araçları kategorisi altındaki MSI analiz araçları yeniden organize edildi.
* Geçerli araçlar güncellendi.
* pev PATH'i düzeltildi.
* SendTo+ lisans sorunu düzeltildi \[[#34](https://github.com/mentebinaria/retoolkit/issues/34)\].
* SlothBP x64dbg eklentisi yapılandırmasına birçok yeni fonksiyon eklendi.
* Yeni DIE imzaları eklendi.
* Eklenen araçlar:
    * Dev-C++ derleyici
    * Java araçları tarafından ihtiyaç duyulan Java 8 runtime ortamı
    * Python tabanlı araçları desteklemek için Python 3 (WinPython yoluyla)
    * XLMMacroDeobfuscator
    * dnSpyEx (yeni, sürdürülen dnSpy çatalı)
    * oledump
    * oletools \[[#33](https://github.com/mentebinaria/retoolkit/issues/33)\]
    * pdfid.py
    * pdf-parser.py
    * MapoAnalyzer x64dbg eklentisi
    * xSelectBlock x64dbg eklentisi
    * redress
    * hollows_hunter
    * HyperDbg
    * Threadtear
    * 1768.py
    * CobaltStrikeScan
    * dex2jar

### v2021d

* JADX eklendi.
* Hedef dosya tipine göre daha iyi organizasyon
* New bağlam menüsü (bir dosyaya sağ tıklayın -> Gönder -> retoolkit)
* Başlangıç Menüsü kısayolları kaldırıldı.
* Araçlar son sürümlerine güncellendi.
* Hata sorgusu aracı daha fazla özelliği olan bir başkasıyla değiştirildi.
* fasm artık .asm dosyalarına çift tıklandığında onları açabiliyor.

### v2021c
* İlk kamu yayını
