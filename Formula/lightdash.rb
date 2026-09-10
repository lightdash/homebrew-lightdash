class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.185.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.4/lightdash-cli-2.185.4-macos-arm64.tar.gz"
      sha256 "dd5329e7190194f524fc32967532fe874e162b8e8688450e47533a3143f2bca2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.4/lightdash-cli-2.185.4-macos-x64.tar.gz"
      sha256 "fa245a3e66d9e3ba622e5cacc79e12588e87bca8a212bf7f8cb2902016463999"
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
