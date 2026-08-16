class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.163.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.1/lightdash-cli-1.163.1-macos-arm64.tar.gz"
      sha256 "0d5197c2efedd579c72e478a911a3c455a1adaa8d99fa94c32d3ad89d2e52062"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.163.1/lightdash-cli-1.163.1-macos-x64.tar.gz"
      sha256 "1fad364c230e5589d505d0917439dd6c2ab9a4a136c78bc81bf2a69ce016758c"
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
