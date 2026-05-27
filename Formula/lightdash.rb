class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3024.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.4/lightdash-cli-0.3024.4-macos-arm64.tar.gz"
      sha256 "626228d72ccee5636d798677b36618c4de1803b67c1fef5701dfb40cc59fe5aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.4/lightdash-cli-0.3024.4-macos-x64.tar.gz"
      sha256 "62aeb12664fc5fb1011ac4d4d87b044744cff501667942e0d260c46b5058b17f"
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
