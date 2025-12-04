class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2222.0-alpha.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2222.0-alpha.1/lightdash-cli-0.2222.0-alpha.1-macos-arm64.tar.gz"
      sha256 "ec52afeb18e2db6ff93dc031919b0682440d8eead80f7ab2f95696217238829c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2222.0-alpha.1/lightdash-cli-0.2222.0-alpha.1-macos-x64.tar.gz"
      sha256 "4c5d16e036256397ab315b404197719209e87e7f6bd55264b07eb801636f563c"
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
