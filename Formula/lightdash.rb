class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2353.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.5/lightdash-cli-0.2353.5-macos-arm64.tar.gz"
      sha256 "502d28122d62b75cf2552176da5b68461b32eb646b49a4e2883de0439d5eacfe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.5/lightdash-cli-0.2353.5-macos-x64.tar.gz"
      sha256 "36a8033f20d9f52728c3bdc1282f5b649fc23ffb40aba4c487399eff059e0683"
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
