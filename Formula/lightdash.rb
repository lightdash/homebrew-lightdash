class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2576.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2576.0/lightdash-cli-0.2576.0-macos-arm64.tar.gz"
      sha256 "6f5b4fc0df4829ade0534785c65782cb8688c883040acc5fc1b87ec35f53d1d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2576.0/lightdash-cli-0.2576.0-macos-x64.tar.gz"
      sha256 "474a0755de1163567291760103aaef4ce4c03d4195d2dc6455a92db0a3a8ff82"
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
