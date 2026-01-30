class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2403.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2403.0/lightdash-cli-0.2403.0-macos-arm64.tar.gz"
      sha256 "28c522e740a15bd08f14756c2b39f184714821f061cf2573907858ba07220f72"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2403.0/lightdash-cli-0.2403.0-macos-x64.tar.gz"
      sha256 "ec0a4eab62d568cbff9115eadc0e39fa828900af9668e54be103adf1fdc828a0"
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
