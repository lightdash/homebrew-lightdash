class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3213.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3213.0/lightdash-cli-0.3213.0-macos-arm64.tar.gz"
      sha256 "a5814715ad3d22307a5ed65311908c1acfb2bc8d591eeeeb290174f0d2af2c10"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3213.0/lightdash-cli-0.3213.0-macos-x64.tar.gz"
      sha256 "bb5a2ba5bbe5432338b29be58ef20239dea66378136a2527105815687b1aea88"
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
