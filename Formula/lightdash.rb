class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2439.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.3/lightdash-cli-0.2439.3-macos-arm64.tar.gz"
      sha256 "b56afd010b32eb18642818a82d3326199fb25077ede724850be27a2ad7273575"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2439.3/lightdash-cli-0.2439.3-macos-x64.tar.gz"
      sha256 "90ab9a2db7c5bd8be938bdea3d78b91d1a9ae5112c47b00c3e8c4f2b257caad3"
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
