class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2436.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.4/lightdash-cli-0.2436.4-macos-arm64.tar.gz"
      sha256 "586a37a16a45827c0669781de81e7132a7a060be3069aea4ced60b98849abe51"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.4/lightdash-cli-0.2436.4-macos-x64.tar.gz"
      sha256 "0392068edbd2deb3e0ef7fa2b146eed53a4410d6d3d01e5d58c7d4e739f84fba"
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
