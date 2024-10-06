# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Heimdall < Formula
  desc ""
  homepage "https://github.com/yodamad/heimdall"
  version "0.2.0"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/yodamad/heimdall/releases/download/0.2.0/heimdall_Darwin_x86_64.tar.gz"
      sha256 "ecbc0f72b2f940f7135ac52e673e10d7aca338d9c39f6bbc1a3473349806dc42"

      def install
        bin.install "heimdall"
      end
    end
    on_arm do
      url "https://github.com/yodamad/heimdall/releases/download/0.2.0/heimdall_Darwin_arm64.tar.gz"
      sha256 "1eab78b7f14596cf27cadde075557a7e33f4f8b739071a71257919b0f3c988f0"

      def install
        bin.install "heimdall"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yodamad/heimdall/releases/download/0.2.0/heimdall_Linux_x86_64.tar.gz"
        sha256 "e980145ef7fea1e72e4bad8d647e3692d428992c22e6cabcfc25c792e3ecddea"

        def install
          bin.install "heimdall"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yodamad/heimdall/releases/download/0.2.0/heimdall_Linux_arm64.tar.gz"
        sha256 "c497377a39bf260c86979e2c50d755ca1d6b196ea53ae1931be8fcae8d2751ad"

        def install
          bin.install "heimdall"
        end
      end
    end
  end
end
