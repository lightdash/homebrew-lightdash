class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3327.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3327.0/lightdash-cli-0.3327.0-macos-arm64.tar.gz"
      sha256 "fa8ee67a3542f121e1c0c4c7d40658189d0228aa2b590d7288ed6b830ada5b75"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3327.0/lightdash-cli-0.3327.0-macos-x64.tar.gz"
      sha256 "956af16c7db0f8144f523178b10a0e4df0066b8b11531b1228bb2669104a18a4"
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
