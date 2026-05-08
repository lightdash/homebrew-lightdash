class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.3/lightdash-cli-0.2903.3-macos-arm64.tar.gz"
      sha256 "feef295d42592a475d0c3306ae056225cc63c022d75f70d76667c6c81f4b111c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.3/lightdash-cli-0.2903.3-macos-x64.tar.gz"
      sha256 "0bc0cfecd5ef5bcec36100a11008b8a45632e0c5199acb781226687be430c62c"
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
