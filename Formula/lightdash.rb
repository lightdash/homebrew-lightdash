class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2748.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.2/lightdash-cli-0.2748.2-macos-arm64.tar.gz"
      sha256 "d5ba347505622c5c5fccff7c69fe181e016f9760fba5ba18633f7ef414386ece"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.2/lightdash-cli-0.2748.2-macos-x64.tar.gz"
      sha256 "160f4be87bd9d27cebeff60c434dae45669f750f2f390b514dde6e3a215e4487"
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
