class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.101.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.101.0/lightdash-cli-3.101.0-macos-arm64.tar.gz"
      sha256 "66d393e3845f684f7c040a723cbc4122b1b454ba66a5ab68bbfee5aa2ee3abda"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.101.0/lightdash-cli-3.101.0-macos-x64.tar.gz"
      sha256 "d873b0317e424212a39ee9fe5698e8567964cc27bcbf5d47426f286c03bb7098"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.101.0/lightdash-cli-3.101.0-linux-x64.tar.gz"
    sha256 "4879bceca8057c2e9971fd6f5bc639ce256e6875e3c2d5a829605b5221291119"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
