class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3335.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3335.2/lightdash-cli-0.3335.2-macos-arm64.tar.gz"
      sha256 "6a9cf9b6801f638fe8cdf99317ec27f434dde1d4897b9a506545207caf066a48"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3335.2/lightdash-cli-0.3335.2-macos-x64.tar.gz"
      sha256 "d08290eff67fcbef8cf964e8527648c8cb72692ced359fda6b8b77e8f48a136b"
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
