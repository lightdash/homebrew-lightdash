class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2964.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2964.0/lightdash-cli-0.2964.0-macos-arm64.tar.gz"
      sha256 "0980645ad08df28da0101b38e9270241b5dc36325889c0c51d144076ae4042d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2964.0/lightdash-cli-0.2964.0-macos-x64.tar.gz"
      sha256 "5916ce5c596e307b07452429720abc7c557660029bbb12c65561d9d3e70b9146"
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
