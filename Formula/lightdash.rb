class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2607.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2607.2/lightdash-cli-0.2607.2-macos-arm64.tar.gz"
      sha256 "0ead52f31a4dee4e303cbba6d6874be798ce2116a49b6196016626a04be0115b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2607.2/lightdash-cli-0.2607.2-macos-x64.tar.gz"
      sha256 "52c418e961466f59ebf4d8d08ca4cc175c3ad52ddfeaeb857ed2026d8ff7030e"
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
