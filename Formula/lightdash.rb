class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3076.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3076.1/lightdash-cli-0.3076.1-macos-arm64.tar.gz"
      sha256 "25ae3e1ec3e85072d346d76e1a176f38a46c2189b603d6dcdfdf38bcfcae072a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3076.1/lightdash-cli-0.3076.1-macos-x64.tar.gz"
      sha256 "fc7f9228fa7a378d2431b8e97b779b221f063557fc4c9288e12425c3938b5c98"
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
