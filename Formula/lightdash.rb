class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2301.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.4/lightdash-cli-0.2301.4-macos-arm64.tar.gz"
      sha256 "5aca58fdaeb66ffe336c9a97c91b99b3c11507a74d9745ba1d18c5d0f4d5e451"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.4/lightdash-cli-0.2301.4-macos-x64.tar.gz"
      sha256 "349a763bb1db6b80396f58d3aabba715f9f9156bb5170f3718bf74ae5065dad7"
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
