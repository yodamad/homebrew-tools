# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Heimdall < Formula
  desc ""
  homepage "https://github.com/yodamad/heimdall"
  version "0.5.5"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yodamad/heimdall/releases/download/v0.5.5/heimdall_Darwin_x86_64.tar.gz"
      sha256 "68726aef5c136b3aaa9fcb67245c8ed86d0fa596d4b20ac5de0093dee3f44dd6"

      def install
        bin.install "heimdall"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yodamad/heimdall/releases/download/v0.5.5/heimdall_Darwin_arm64.tar.gz"
      sha256 "79871f96a1076e0cc912626f5017d6a2b81f610505d30c79acd2f0e4ddb5ead6"

      def install
        bin.install "heimdall"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yodamad/heimdall/releases/download/v0.5.5/heimdall_Linux_x86_64.tar.gz"
        sha256 "298cbf6b0edab522b8c3d9257c2372541e3540edf95209a87c637526fbd359dd"

        def install
          bin.install "heimdall"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yodamad/heimdall/releases/download/v0.5.5/heimdall_Linux_arm64.tar.gz"
        sha256 "8c5c926529958e9eae3910569e7a2fdb1e2397778151dbd28a2d80454bf7296c"

        def install
          bin.install "heimdall"
        end
      end
    end
  end
end
