# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Heimdall < Formula
  desc ""
  homepage "https://github.com/yodamad/heimdall"
  version "0.0.3"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional
  depends_on :macos

  url "https://github.com/yodamad/heimdall/releases/download/0.0.3/heimdall_Darwin_x86_64.tar.gz"
  sha256 "ee873c82abb781e94fd741b159d7d7c20c3027cc4b0874abe3aff6cdf6c1c90f"

  def install
    bin.install "heimdall"
  end

  on_arm do
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for the Heimdall
        formula at this time. The darwin_amd64 binary may work in compatibility
        mode, but it might not be fully supported.
      EOS
    end
  end
end
