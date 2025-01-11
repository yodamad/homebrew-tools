class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "1.2.3"
    BASE_URL = "https://github.com/yodamad/slidesk-fork/releases/download/#{version}"

    MAC_ARM_SHA = "bd198c80cf98f591f10c03ab177b2600690863e0bb55afd1ae239c60660b86d6"
    MAC_AMD_SHA = "b328dc00b258eaa7aeadca0d3b4e3994f6f1ca5f1aaddc16f46faff040bf60b6"
    LINUX_ARM_SHA = "25e610565d34f11dc8628fd6b4829d9a099688a40e6916860bd051b6aecc2afc"
    LINUX_AMD_SHA = "870d3cef428d408566df9bc2fc32353fca79ef1c79a43edded669b4fe16a072d"

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

