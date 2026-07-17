class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3405.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3405.1/lightdash-cli-0.3405.1-macos-arm64.tar.gz"
      sha256 "f33fc46e5395a16bc03959cde58491b01fd06f4cd598bbd579fcc7c7ae2bc965"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3405.1/lightdash-cli-0.3405.1-macos-x64.tar.gz"
      sha256 "c0e77ef2576b6a1a76063d6dae1c75e11ce83e11aea6016d4f0f0877e11d51a5"
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
