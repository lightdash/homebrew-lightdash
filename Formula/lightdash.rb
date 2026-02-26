class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2536.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.4/lightdash-cli-0.2536.4-macos-arm64.tar.gz"
      sha256 "9b4533f35880cf7ed394051a6c63abf30d5feced0a26762f1ad8c120812ce4a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.4/lightdash-cli-0.2536.4-macos-x64.tar.gz"
      sha256 "cd5ada22f8d4d9a93022bda2da63a861dd044cb6b3325a01bc14fbbae765a032"
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
