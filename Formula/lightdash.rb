class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2610.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.1/lightdash-cli-0.2610.1-macos-arm64.tar.gz"
      sha256 "4205c9c0221288e054f6904fdae78073bb62f9a25c9be241628679279bf426a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.1/lightdash-cli-0.2610.1-macos-x64.tar.gz"
      sha256 "41cf55b8269dde201be700ab1070ce5fbd37cae70956aefd8e18525531bef690"
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
