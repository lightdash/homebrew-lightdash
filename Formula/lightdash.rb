class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.314.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.314.1/lightdash-cli-2.314.1-macos-arm64.tar.gz"
      sha256 "b58486a8eadfcf798e14f722d2410ab6bf0d8312f02dbb8919a9cb8f2f39443a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.314.1/lightdash-cli-2.314.1-macos-x64.tar.gz"
      sha256 "ef368e3edd3cc20d60abd0654487432dd188bfb9fe0692fa0aecd9f648191807"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.314.1/lightdash-cli-2.314.1-linux-x64.tar.gz"
    sha256 "01820d56b4ce6c8d3af3bdc66d6eb64cc6346585617bc97ce6962e84d72ecfb7"

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
