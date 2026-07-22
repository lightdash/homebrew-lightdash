class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3458.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3458.0/lightdash-cli-0.3458.0-macos-arm64.tar.gz"
      sha256 "ec29106e15702c273bdf8ec81e66af66519206aca5229c1043b05fc97c87a4ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3458.0/lightdash-cli-0.3458.0-macos-x64.tar.gz"
      sha256 "addc7162c64503199d22c0ed2d7062d48433db6909b7004b245447be9f75572b"
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
