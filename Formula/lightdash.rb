class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3136.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3136.0/lightdash-cli-0.3136.0-macos-arm64.tar.gz"
      sha256 "204ccfb9ce4ef2182731bcfa51cc8e17b0c1a662c7124bb01614c8e27f6aa823"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3136.0/lightdash-cli-0.3136.0-macos-x64.tar.gz"
      sha256 "4a1ebe1a26f977118a2009ca939fa2e806c48d2ece2ce86b4894f0cb03ca78de"
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
