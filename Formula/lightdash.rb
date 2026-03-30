class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2685.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2685.0/lightdash-cli-0.2685.0-macos-arm64.tar.gz"
      sha256 "37374b2173c43e62ec8a936031fb5782c1cfc1f51722acc7b10619327b6a934d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2685.0/lightdash-cli-0.2685.0-macos-x64.tar.gz"
      sha256 "be6b805e3a48d420c0888df33058f19abeddf55774e155fad53476a49667fd6c"
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
