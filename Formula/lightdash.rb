class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2933.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2933.0/lightdash-cli-0.2933.0-macos-arm64.tar.gz"
      sha256 "9f8ac8ff535189da1b7c5afcd78d567853c02e19c9f2a5b6076f4ba4c2efd4ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2933.0/lightdash-cli-0.2933.0-macos-x64.tar.gz"
      sha256 "abea228e78a49183f5ac89bbd240cc2bc31da5086e4c3153614f801328fd4ce0"
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
