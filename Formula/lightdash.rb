class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2759.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.2/lightdash-cli-0.2759.2-macos-arm64.tar.gz"
      sha256 "dcc9ee5887f147e00f3c250e54bcede178d57fb631df8fb90c7eb580f121a759"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.2/lightdash-cli-0.2759.2-macos-x64.tar.gz"
      sha256 "6bc652081cbdc9d00cf46ef2ae79f93a0cf250916359eb236bb6384f0033992f"
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
