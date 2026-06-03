class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3081.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3081.2/lightdash-cli-0.3081.2-macos-arm64.tar.gz"
      sha256 "a54ddf9a8fcefdc129dc3e5aacc13f936f4d171226cf5d9127776e9b3d0476f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3081.2/lightdash-cli-0.3081.2-macos-x64.tar.gz"
      sha256 "dca7b996e5e74cc340b095deaef7b2ab894bc00715590e26ba80f4ca76338140"
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
