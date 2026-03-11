class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2607.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2607.0/lightdash-cli-0.2607.0-macos-arm64.tar.gz"
      sha256 "04813b4fee2b86350578ecf7e4ea496b035870a14bea403837f0598d468286c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2607.0/lightdash-cli-0.2607.0-macos-x64.tar.gz"
      sha256 "1714c0a438394d61d1df2fdfc306869c687d6c98ad61368f9390e31eee6a34a9"
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
