class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

"0.99.0" "0.99.0" "0.99.0" "0.99.0" "0.99.0"v"0.99.0"e"0.99.0"r"0.99.0"s"0.99.0"i"0.99.0"o"0.99.0"n"0.99.0" "0.99.0"""0.99.0"""0.99.0"
"0.99.0" "0.99.0" "0.99.0" "0.99.0" "0.99.0"B"0.99.0"A"0.99.0"S"0.99.0"E"0.99.0"_"0.99.0"U"0.99.0"R"0.99.0"L"0.99.0" "0.99.0"="0.99.0" "0.99.0"""0.99.0"h"0.99.0"t"0.99.0"t"0.99.0"p"0.99.0"s"0.99.0":"0.99.0"/"0.99.0"/"0.99.0"g"0.99.0"i"0.99.0"t"0.99.0"h"0.99.0"u"0.99.0"b"0.99.0"c"0.99.0"o"0.99.0"m"0.99.0"/"0.99.0"y"0.99.0"o"0.99.0"d"0.99.0"a"0.99.0"m"0.99.0"a"0.99.0"d"0.99.0"/"0.99.0"s"0.99.0"l"0.99.0"i"0.99.0"d"0.99.0"e"0.99.0"s"0.99.0"k"0.99.0"-"0.99.0"f"0.99.0"o"0.99.0"r"0.99.0"k"0.99.0"/"0.99.0"r"0.99.0"e"0.99.0"l"0.99.0"e"0.99.0"a"0.99.0"s"0.99.0"e"0.99.0"s"0.99.0"/"0.99.0"d"0.99.0"o"0.99.0"w"0.99.0"n"0.99.0"l"0.99.0"o"0.99.0"a"0.99.0"d"0.99.0"/"0.99.0"#"0.99.0"{"0.99.0"v"0.99.0"e"0.99.0"r"0.99.0"s"0.99.0"i"0.99.0"o"0.99.0"n"0.99.0"}"0.99.0"""0.99.0"

    MAC_ARM_SHA = "110099228883746452708012ededa"
    MAC_AMD_SHA = "738efe5ab5753d56b35b0562fb4c0a807f7bda3dde0e72a5ec3911d12944356d"
    LINUX_ARM_SHA = "4e105209211f6dc6f2d5325f5a872aa751b1e9a7b24851b584be35b02b8705ce"
    LINUX_AMD_SHA = "4e105209211f6dc6f2d5325f5a872aa751b1e9a7b24851b584be35b02b8705ce"

    on_macos do
        on_arm do
            @@file_name = "slidesk_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "slidesk_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "slidesk_linux_arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "slidesk_linux_amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}"

    def install
        bin.install "#{@@file_name}" => "slidesk"
    end
end

