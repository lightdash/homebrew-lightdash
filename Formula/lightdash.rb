class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2846.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2846.0/lightdash-cli-0.2846.0-macos-arm64.tar.gz"
      sha256 "5a8ad00860da9aae473d86a7e7d4a806e150af4e13af94a9a3897c3a4689f1da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2846.0/lightdash-cli-0.2846.0-macos-x64.tar.gz"
      sha256 "d032647bf2c9cb78b9935b3558a8b11483af7d8617e6559b06d774171217d541"
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
