class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2616.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2616.1/lightdash-cli-0.2616.1-macos-arm64.tar.gz"
      sha256 "9d36444d3208a096fe17a223cb1cb419925aa03cf115a7b96cc677c39e0f3457"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2616.1/lightdash-cli-0.2616.1-macos-x64.tar.gz"
      sha256 "d45d7b89a74c3e385408d83e7d9f03e9138306fff02bb1b9dc280829a8569faf"
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
