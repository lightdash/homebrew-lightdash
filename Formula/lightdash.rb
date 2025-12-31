class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2290.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.1/lightdash-cli-0.2290.1-macos-arm64.tar.gz"
      sha256 "d40a0c48230214b2cf8bd9c34bbccb47244ba3890e32b7edad3ecce4e875090f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.1/lightdash-cli-0.2290.1-macos-x64.tar.gz"
      sha256 "0c7af8e7d23f528aba9fb65240a490b964d2bedd77e3e79dd6549a06c3180a9f"
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
