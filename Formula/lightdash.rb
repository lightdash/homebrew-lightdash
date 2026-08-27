class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.31.1/lightdash-cli-2.31.1-macos-arm64.tar.gz"
      sha256 "bc1c4e76cc1317dfe6fc7e95bbe220c822936f1e20a3085e1115f02201864915"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.31.1/lightdash-cli-2.31.1-macos-x64.tar.gz"
      sha256 "01d4056e40162c96bb2085f45ad5aa4422ab06f6bddcdbcf319a80a498d9ed89"
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
