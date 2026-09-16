class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.243.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.1/lightdash-cli-2.243.1-macos-arm64.tar.gz"
      sha256 "4a2388428d2fceafb4532bdf98147de32216995cb44ca4778d1da917e7d84ee7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.1/lightdash-cli-2.243.1-macos-x64.tar.gz"
      sha256 "b3c12f64d5ba1f3526306fc64e0933c41d99c173221adaf54bde5ef38757bb62"
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
