class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2387.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2387.0/lightdash-cli-0.2387.0-macos-arm64.tar.gz"
      sha256 "b391b3faa1db873fd8dd462c749f7630946d0993c6f850242cff28edf52012a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2387.0/lightdash-cli-0.2387.0-macos-x64.tar.gz"
      sha256 "12b4308d5a3f3fdd910930e4a7ee8962bff244c6e6fdd6275d188d30e82e0e26"
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
