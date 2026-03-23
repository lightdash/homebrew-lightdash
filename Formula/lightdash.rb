class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2654.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2654.1/lightdash-cli-0.2654.1-macos-arm64.tar.gz"
      sha256 "2f2b138b6be45037682519e35bbdaa2068c77bb9af38601b44ef9d8a9f4c22e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2654.1/lightdash-cli-0.2654.1-macos-x64.tar.gz"
      sha256 "6a99fec47ee65866be1f1f24713896c235fa409307154e8db4bfccbcfa3fdff9"
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
