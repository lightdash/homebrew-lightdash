class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3262.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3262.2/lightdash-cli-0.3262.2-macos-arm64.tar.gz"
      sha256 "5afdfec6efd2908dc91a1b367e867891b1cb61ce8b4975fd0bf7bf7833913141"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3262.2/lightdash-cli-0.3262.2-macos-x64.tar.gz"
      sha256 "b9d161e339c0c8578cbd787d22a7188a75b9066142a55ad07cf1d457153739ca"
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
