class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2325.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2325.0/lightdash-cli-0.2325.0-macos-arm64.tar.gz"
      sha256 "ccd13a1009b997b90164cae863eabc80d19ffebcd2062d37cdaf8f98cef681a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2325.0/lightdash-cli-0.2325.0-macos-x64.tar.gz"
      sha256 "c794ef7c2f74da18c58f076d2a42cd5f9892410b72ad27dc87ec4fb866c3cde9"
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
