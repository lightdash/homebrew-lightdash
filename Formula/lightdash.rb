class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2291.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2291.0/lightdash-cli-0.2291.0-macos-arm64.tar.gz"
      sha256 "daccc881dac2ac88f51ea227bf9a3cf230b5e9472e209f057489be0da92831db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2291.0/lightdash-cli-0.2291.0-macos-x64.tar.gz"
      sha256 "18d6d178dbfe3accc8e135f2d95630de5ee86bd80cdf6c757e5c9cfec451c3a2"
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
