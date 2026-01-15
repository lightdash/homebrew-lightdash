class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2341.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2341.2/lightdash-cli-0.2341.2-macos-arm64.tar.gz"
      sha256 "a38bbb6863c32d1e61089dccf6ef0556c401bffb0fd779e211ac53098b30b9e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2341.2/lightdash-cli-0.2341.2-macos-x64.tar.gz"
      sha256 "9774197e934b1aa199821d277546686b3e760a064d9821e74aa9ea82666eb90d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
