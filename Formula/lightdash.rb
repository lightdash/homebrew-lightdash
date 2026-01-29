class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2394.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2394.1/lightdash-cli-0.2394.1-macos-arm64.tar.gz"
      sha256 "a89b64685b6d35356e0463a866f66c84bd7419d5d9754f6f280baca606dc4e32"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2394.1/lightdash-cli-0.2394.1-macos-x64.tar.gz"
      sha256 "1fd73428461702dca1b8aae01138c05bfd35103427ed87fd969467510605bf18"
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
