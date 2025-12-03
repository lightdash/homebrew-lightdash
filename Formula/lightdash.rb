class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2221.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.4/lightdash-cli-0.2221.4-macos-arm64.tar.gz"
      sha256 "4670d12ae33fc9cb79fb950ced758a51ec3a2bddafd7a50d98b8fc24462c1977"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.4/lightdash-cli-0.2221.4-macos-x64.tar.gz"
      sha256 "07f4057898484513113600fd129928c9e98bbd07a6f5a1a972666edd50935b71"
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
