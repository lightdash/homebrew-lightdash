class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2976.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.3/lightdash-cli-0.2976.3-macos-arm64.tar.gz"
      sha256 "69b1417fe4428563e610010afe47fea3e525b2c9a3a2e4b28d5d99655d04d294"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.3/lightdash-cli-0.2976.3-macos-x64.tar.gz"
      sha256 "4bfb09776a2469f20df4543d43952eaf5b7a42354429994bc7707cc9a3009561"
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
