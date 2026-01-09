class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2323.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2323.0/lightdash-cli-0.2323.0-macos-arm64.tar.gz"
      sha256 "ccac835fb52e8e5db98fd09d881c244a15164a35eb03312f97d4a39db8564b80"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2323.0/lightdash-cli-0.2323.0-macos-x64.tar.gz"
      sha256 "315f35b87084443ecf74432eeb20c6ad0658205210dc74455ba4f261666daa90"
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
