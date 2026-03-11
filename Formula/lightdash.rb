class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2603.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2603.2/lightdash-cli-0.2603.2-macos-arm64.tar.gz"
      sha256 "98518891346cc5241b24cf12e9bbaa20ef15505a575ae17de691f26c6e5b8f16"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2603.2/lightdash-cli-0.2603.2-macos-x64.tar.gz"
      sha256 "70476777734eb33926eeaa57c268ca27e71e47c159e00beca32ec9a37ccb1e9e"
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
